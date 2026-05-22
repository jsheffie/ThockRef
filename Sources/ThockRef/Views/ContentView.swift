import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var store: LibraryStore
    @State private var searchQuery = ""

    private var searchResults: [Shortcut] {
        fuzzyFilter(searchQuery, libraries: store.libraries)
    }

    var body: some View {
        NavigationStack {
            Group {
                if store.libraries.isEmpty {
                    VStack(spacing: 12) {
                        Image(systemName: "keyboard")
                            .font(.system(size: 40))
                            .foregroundStyle(.secondary)
                        Text("No libraries found")
                            .font(.headline)
                        Text("Add .md files to ~/.config/thockref/")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                } else if searchQuery.isEmpty {
                    List(store.libraries) { library in
                        NavigationLink(value: library) {
                            Label(library.name, systemImage: "doc.text")
                        }
                    }
                } else if searchResults.isEmpty {
                    VStack(spacing: 8) {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 32))
                            .foregroundStyle(.secondary)
                        Text("No results for \"\(searchQuery)\"")
                            .foregroundStyle(.secondary)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    List(searchResults) { shortcut in
                        HStack(alignment: .top, spacing: 12) {
                            Text(shortcut.keys)
                                .font(.system(.body, design: .monospaced))
                                .foregroundStyle(.primary)
                                .frame(minWidth: 110, alignment: .leading)
                            VStack(alignment: .leading, spacing: 2) {
                                Text(shortcut.description)
                                    .font(.body)
                                    .foregroundStyle(.secondary)
                                    .fixedSize(horizontal: false, vertical: true)
                                Text(shortcut.source)
                                    .font(.caption)
                                    .foregroundStyle(.tertiary)
                            }
                        }
                        .padding(.vertical, 2)
                    }
                    .listStyle(.plain)
                }
            }
            .navigationTitle("ThockRef")
            .navigationDestination(for: Library.self) { library in
                ShortcutListView(library: library)
            }
            .searchable(text: $searchQuery, prompt: "Search shortcuts…")
        }
        .frame(width: 400, height: 500)
    }
}
