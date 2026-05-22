import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var store: LibraryStore
    @State private var searchQuery = ""

    private var searchResults: [SearchResult] {
        fuzzyFilter(searchQuery, libraries: store.libraries)
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Search bar
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.secondary)
                    TextField("Search shortcuts…", text: $searchQuery)
                        .textFieldStyle(.plain)
                    if !searchQuery.isEmpty {
                        Button(action: { searchQuery = "" }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundStyle(.secondary)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 7)
                .background(Color(nsColor: .controlBackgroundColor))

                Divider()

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
                        List(searchResults, id: \.shortcut.id) { result in
                            HStack(alignment: .top, spacing: 12) {
                                highlightedText(
                                    result.shortcut.keys,
                                    query: searchQuery,
                                    base: .primary,
                                    highlight: .accentColor
                                )
                                .font(.system(.body, design: .monospaced))
                                .frame(minWidth: 110, alignment: .leading)

                                VStack(alignment: .leading, spacing: 2) {
                                    highlightedText(
                                        result.shortcut.description,
                                        query: searchQuery,
                                        base: .secondary,
                                        highlight: .accentColor
                                    )
                                    .font(.body)
                                    .fixedSize(horizontal: false, vertical: true)

                                    Text(result.shortcut.source)
                                        .font(.caption)
                                        .foregroundStyle(.tertiary)
                                }
                            }
                            .padding(.vertical, 2)
                        }
                        .listStyle(.plain)
                    }
                }
            }
            .navigationTitle("ThockRef")
            .navigationDestination(for: Library.self) { library in
                ShortcutListView(library: library)
            }
        }
        .frame(width: 400, height: 500)
    }
}

private func highlightedText(
    _ string: String,
    query: String,
    base: Color,
    highlight: Color
) -> Text {
    let q = query.lowercased()
    let s = string
    guard !q.isEmpty, let range = s.range(of: q, options: .caseInsensitive) else {
        return Text(s).foregroundColor(base)
    }
    let before = Text(String(s[s.startIndex..<range.lowerBound])).foregroundColor(base)
    let match  = Text(String(s[range])).foregroundColor(highlight).bold()
    let after  = Text(String(s[range.upperBound...])).foregroundColor(base)
    return before + match + after
}

