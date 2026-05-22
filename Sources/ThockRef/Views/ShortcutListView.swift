import SwiftUI

struct ShortcutListView: View {
    let library: Library
    @Environment(\.dismiss) private var dismiss
    @State private var legendExpanded = false

    var body: some View {
        VStack(spacing: 0) {
            // Header bar with back button
            HStack {
                Button(action: { dismiss() }) {
                    HStack(spacing: 4) {
                        Image(systemName: "chevron.left")
                        Text("TheThocks")
                    }
                    .font(.subheadline)
                }
                .buttonStyle(.plain)
                .foregroundStyle(Color.accentColor)

                Spacer()

                Text(library.name)
                    .font(.headline)

                Spacer()
                // Balance the back button width
                Color.clear.frame(width: 70, height: 1)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(.bar)

            Divider()

            if library.shortcuts.isEmpty {
                VStack(spacing: 8) {
                    Image(systemName: "tray")
                        .font(.system(size: 32))
                        .foregroundStyle(.secondary)
                    Text("No shortcuts found")
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            } else {
                if let legend = library.layoutLegend {
                    DisclosureGroup(isExpanded: $legendExpanded) {
                        Text(legend)
                            .font(.system(.caption, design: .monospaced))
                            .foregroundStyle(.secondary)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 12)
                            .padding(.bottom, 8)
                    } label: {
                        Label("Keyboard Layout", systemImage: "keyboard")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)

                    Divider()
                }

                List {
                    ForEach(library.shortcuts) { shortcut in
                        HStack(alignment: .top, spacing: 12) {
                            Text(shortcut.keys)
                                .font(.system(.body, design: .monospaced))
                                .foregroundStyle(.primary)
                                .frame(minWidth: 110, alignment: .leading)
                            Text(shortcut.description)
                                .font(.body)
                                .foregroundStyle(.secondary)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .padding(.vertical, 2)
                    }

                    if !library.links.isEmpty {
                        Section {
                            ForEach(library.links) { link in
                                Link(link.label, destination: link.url)
                                    .font(.subheadline)
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                            }
                        } header: {
                            Text("Links")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .listStyle(.plain)
            }
        }
        .frame(width: 400, height: 500)
        .navigationBarBackButtonHidden(true)
    }
}
