import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var store: LibraryStore

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
                } else {
                    List(store.libraries) { library in
                        NavigationLink(value: library) {
                            Label(library.name, systemImage: "doc.text")
                        }
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
