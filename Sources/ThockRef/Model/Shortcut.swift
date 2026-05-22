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
