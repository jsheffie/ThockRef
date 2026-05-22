import SwiftUI

struct ShortcutListView: View {
    let library: Library
    @Environment(\.dismiss) private var dismiss

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
                List(library.shortcuts) { shortcut in
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
                .listStyle(.plain)
            }
        }
        .frame(width: 400, height: 500)
        .navigationBarBackButtonHidden(true)
    }
}
