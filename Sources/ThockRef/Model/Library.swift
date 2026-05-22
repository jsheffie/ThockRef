import Foundation

struct LibraryLink: Identifiable, Hashable {
    var id: UUID
    var label: String
    var url: URL

    init(id: UUID = UUID(), label: String, url: URL) {
        self.id = id
        self.label = label
        self.url = url
    }
}

struct Library: Identifiable, Hashable {
    var id: UUID
    var name: String
    var shortcuts: [Shortcut]
    var layoutLegend: String?
    var links: [LibraryLink]

    init(id: UUID = UUID(), name: String, shortcuts: [Shortcut], layoutLegend: String? = nil, links: [LibraryLink] = []) {
        self.id = id
        self.name = name
        self.shortcuts = shortcuts
        self.layoutLegend = layoutLegend
        self.links = links
    }
}
