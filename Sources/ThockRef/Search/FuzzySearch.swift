import Foundation

private let symbolAliases: [(symbol: String, aliases: [String])] = [
    ("⌘", ["command", "cmd"]),
    ("⇧", ["shift"]),
    ("⌥", ["option", "opt", "alt"]),
    ("^", ["control", "ctrl"]),
]

// Replaces alias words in the query with their symbols, so "cmd r 1" -> "⌘ r 1".
private func normalizeQuery(_ query: String) -> String {
    var result = query.lowercased()
    for (symbol, aliases) in symbolAliases {
        for alias in aliases {
            result = result.replacingOccurrences(of: alias, with: symbol)
        }
    }
    return result
}

// Augments the stored key string with alias words for any symbols present,
// so "⌘ r 1" also matches bare alias queries like "c", "cm", "cmd".
private func expandedKeys(_ keys: String) -> String {
    var extras: [String] = []
    for (symbol, aliases) in symbolAliases where keys.contains(symbol) {
        extras.append(contentsOf: aliases)
    }
    return extras.isEmpty ? keys : "\(keys) \(extras.joined(separator: " "))"
}

struct SearchResult {
    let shortcut: Shortcut
    let keysMatch: Bool
    let descMatch: Bool
}

func fuzzyFilter(_ query: String, libraries: [Library]) -> [SearchResult] {
    guard !query.isEmpty else { return [] }
    let q = normalizeQuery(query)

    return libraries
        .flatMap { $0.shortcuts }
        .compactMap { shortcut -> (SearchResult, Int)? in
            let keys = expandedKeys(shortcut.keys).lowercased()
            let desc = shortcut.description.lowercased()
            let keysHit = keys.contains(q)
            let descHit = desc.contains(q)
            guard keysHit || descHit else { return nil }

            let rank: Int
            if shortcut.keys.lowercased().hasPrefix(q) { rank = 0 }
            else if desc.hasPrefix(q)                  { rank = 1 }
            else if keysHit                            { rank = 2 }
            else                                       { rank = 3 }

            return (SearchResult(shortcut: shortcut, keysMatch: keysHit, descMatch: descHit), rank)
        }
        .sorted { $0.1 < $1.1 }
        .map { $0.0 }
}
