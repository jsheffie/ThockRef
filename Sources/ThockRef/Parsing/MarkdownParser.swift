import Foundation

enum MarkdownParser {

    static func parse(_ text: String, source: String) -> ([Shortcut], String?) {
        var shortcuts: [Shortcut] = []
        var layoutLegend: String? = nil

        let lines = text.components(separatedBy: .newlines)
        var index = 0
        var passedHeader = false

        while index < lines.count {
            let line = lines[index]

            if line.hasPrefix("```") {
                let isLayoutBlock = line.hasPrefix("```laptop-layout")
                var blockLines: [String] = []
                index += 1
                while index < lines.count && !lines[index].hasPrefix("```") {
                    blockLines.append(lines[index])
                    index += 1
                }
                index += 1  // consume closing ```

                if isLayoutBlock, layoutLegend == nil {
                    layoutLegend = blockLines.joined(separator: "\n")
                }
                // Don't reset passedHeader — code blocks can appear between table sections
                continue
            }

            if looksLikePipeRow(line) {
                if isSeparatorRow(line) {
                    passedHeader = true
                    index += 1
                    continue
                }
                if !passedHeader {
                    // header row — skip it and wait for separator
                    index += 1
                    continue
                }
                let cells = parsePipeCells(line)
                // Find the first non-empty cell (keys) and the first non-empty
                // cell after it (description). Handles files where column 1 is
                // an optional "reverse binding" that may be blank.
                let trimmed = cells.map { $0.trimmingCharacters(in: .whitespaces) }
                if let keysIdx = trimmed.indices.first(where: { !trimmed[$0].isEmpty }),
                   let descIdx = trimmed.indices.first(where: { $0 > keysIdx && !trimmed[$0].isEmpty }) {
                    shortcuts.append(Shortcut(
                        keys: normalizeKeys(trimmed[keysIdx]),
                        description: trimmed[descIdx],
                        source: source
                    ))
                }
                index += 1
                continue
            }

            // Non-table non-blank line resets header state so the next table's
            // header row is treated correctly.
            if !line.trimmingCharacters(in: .whitespaces).isEmpty {
                passedHeader = false
            }
            index += 1
        }

        return (shortcuts, layoutLegend)
    }

    private static func looksLikePipeRow(_ line: String) -> Bool {
        let trimmed = line.trimmingCharacters(in: .whitespaces)
        return trimmed.hasPrefix("|") || trimmed.contains(" | ")
    }

    private static func isSeparatorRow(_ line: String) -> Bool {
        let trimmed = line.trimmingCharacters(in: .whitespaces)
        guard trimmed.hasPrefix("|") else { return false }
        let stripped = trimmed
            .replacingOccurrences(of: "|", with: "")
            .replacingOccurrences(of: "-", with: "")
            .replacingOccurrences(of: ":", with: "")
            .replacingOccurrences(of: " ", with: "")
        return stripped.isEmpty
    }

    // Strips markdown backticks and normalises ` -> ` separators to `→`.
    // e.g. "`Shift` -> `Tab`" becomes "Shift → Tab"
    private static func normalizeKeys(_ raw: String) -> String {
        var s = raw
        // Replace backtick-wrapped tokens: `Foo` → Foo
        s = s.replacingOccurrences(of: "`", with: "")
        // Normalise arrow separators
        s = s.replacingOccurrences(of: " -> ", with: " → ")
        return s.trimmingCharacters(in: .whitespaces)
    }

    private static func parsePipeCells(_ line: String) -> [String] {
        var trimmed = line.trimmingCharacters(in: .whitespaces)
        if trimmed.hasPrefix("|") { trimmed = String(trimmed.dropFirst()) }
        if trimmed.hasSuffix("|") { trimmed = String(trimmed.dropLast()) }
        return trimmed.components(separatedBy: "|")
    }
}
