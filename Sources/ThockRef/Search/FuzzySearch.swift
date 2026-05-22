import Foundation

func fuzzyFilter(_ query: String, libraries: [Library]) -> [Shortcut] {
    guard !query.isEmpty else { return [] }
    let q = query.lowercased()

    return libraries
        .flatMap { $0.shortcuts }
        .compactMap { shortcut -> (Shortcut, Int)? in
            let keys = shortcut.keys.lowercased()
            let desc = shortcut.description.lowercased()
            if keys.hasPrefix(q) {
                return (shortcut, 0)
            } else if desc.hasPrefix(q) {
                return (shortcut, 1)
            } else if keys.contains(q) {
                return (shortcut, 2)
            } else if desc.contains(q) {
                return (shortcut, 3)
            }
            return nil
        }
        .sorted { $0.1 < $1.1 }
        .map { $0.0 }
}
