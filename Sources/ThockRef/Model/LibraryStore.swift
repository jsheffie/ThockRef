import Foundation

@MainActor
final class LibraryStore: ObservableObject {

    @Published private(set) var libraries: [Library] = []

    private let configDirectory: URL = {
        let home = FileManager.default.homeDirectoryForCurrentUser
        return home.appendingPathComponent(".config/thockref", isDirectory: true)
    }()

    init() {
        ensureDirectoryExists()
        load()
    }

    private func ensureDirectoryExists() {
        try? FileManager.default.createDirectory(
            at: configDirectory,
            withIntermediateDirectories: true,
            attributes: nil
        )
    }

    private func load() {
        let fm = FileManager.default
        guard let contents = try? fm.contentsOfDirectory(
            at: configDirectory,
            includingPropertiesForKeys: [.nameKey],
            options: .skipsHiddenFiles
        ) else { return }

        let mdFiles = contents
            .filter { $0.pathExtension.lowercased() == "md" }
            .sorted { $0.lastPathComponent < $1.lastPathComponent }

        libraries = mdFiles.compactMap { url in
            guard let text = try? String(contentsOf: url, encoding: .utf8) else { return nil }
            let name = libraryName(from: url)
            let (shortcuts, legend) = MarkdownParser.parse(text, source: name)
            return Library(name: name, shortcuts: shortcuts, layoutLegend: legend)
        }
    }

    private func libraryName(from url: URL) -> String {
        var stem = url.deletingPathExtension().lastPathComponent
        if let range = stem.range(of: #"^\d{3}-"#, options: .regularExpression) {
            stem.removeSubrange(range)
        }
        return stem
            .split(separator: "-")
            .map { $0.prefix(1).uppercased() + $0.dropFirst() }
            .joined(separator: " ")
    }
}
