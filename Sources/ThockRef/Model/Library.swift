import Foundation

struct Library: Identifiable, Hashable {
    var id: UUID
    var name: String
    var shortcuts: [Shortcut]
    var layoutLegend: String?

    init(id: UUID = UUID(), name: String, shortcuts: [Shortcut], layoutLegend: String? = nil) {
        self.id = id
        self.name = name
        self.shortcuts = shortcuts
        self.layoutLegend = layoutLegend
    }
}
