import Foundation

struct Shortcut: Identifiable, Hashable {
    var id: UUID
    var keys: String
    var description: String
    var source: String

    init(id: UUID = UUID(), keys: String, description: String, source: String) {
        self.id = id
        self.keys = keys
        self.description = description
        self.source = source
    }
}

enum ShortcutListItem: Identifiable, Hashable {
    case shortcut(Shortcut)
    case section(id: UUID = UUID(), title: String)

    var id: UUID {
        switch self {
        case .shortcut(let s): return s.id
        case .section(let id, _): return id
        }
    }
}
