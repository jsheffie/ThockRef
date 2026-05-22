import Foundation

@MainActor
final class LibraryStore: ObservableObject {

    @Published private(set) var libraries: [Library] = []

    private let configDirectory: URL = {
        let home = FileManager.default.homeDirectoryForCurrentUser
        return home.appendingPathComponent(".config/thockref", isDirectory: true)
    }()

    private var eventStream: FSEventStreamRef?

    init() {
        ensureDirectoryExists()
        load()
        startWatching()
    }

    deinit {
        if let stream = eventStream {
            FSEventStreamStop(stream)
            FSEventStreamInvalidate(stream)
            FSEventStreamRelease(stream)
        }
    }

    private func startWatching() {
        let path = configDirectory.path as CFString
        let paths = [path] as CFArray

        var context = FSEventStreamContext(
            version: 0,
            info: Unmanaged.passUnretained(self).toOpaque(),
            retain: nil,
            release: nil,
            copyDescription: nil
        )

        eventStream = FSEventStreamCreate(
            nil,
            { _, info, _, _, _, _ in
                guard let info else { return }
                let store = Unmanaged<LibraryStore>.fromOpaque(info).takeUnretainedValue()
                Task { @MainActor in store.load() }
            },
            &context,
            paths,
            FSEventStreamEventId(kFSEventStreamEventIdSinceNow),
            0.5,
            FSEventStreamCreateFlags(kFSEventStreamCreateFlagFileEvents | kFSEventStreamCreateFlagUseCFTypes)
        )

        guard let stream = eventStream else { return }
        FSEventStreamSetDispatchQueue(stream, DispatchQueue.main)
        FSEventStreamStart(stream)
    }

    private func ensureDirectoryExists() {
        try? FileManager.default.createDirectory(
            at: configDirectory,
            withIntermediateDirectories: true,
            attributes: nil
        )
    }

    private func load() {
        let fm = FileManager.default
        guard let contents = try? fm.contentsOfDirectory(
            at: configDirectory,
            includingPropertiesForKeys: [.nameKey],
            options: .skipsHiddenFiles
        ) else { return }

        let mdFiles = contents
            .filter { $0.pathExtension.lowercased() == "md" }
            .sorted { $0.lastPathComponent < $1.lastPathComponent }

        libraries = mdFiles.compactMap { url in
            guard let text = try? String(contentsOf: url, encoding: .utf8) else { return nil }
            let name = libraryName(from: url)
            let (shortcuts, legend) = MarkdownParser.parse(text, source: name)
            return Library(name: name, shortcuts: shortcuts, layoutLegend: legend)
        }
    }

    private func libraryName(from url: URL) -> String {
        var stem = url.deletingPathExtension().lastPathComponent
        if let range = stem.range(of: #"^\d{3}-"#, options: .regularExpression) {
            stem.removeSubrange(range)
        }
        return stem
            .split(separator: "-")
            .map { $0.prefix(1).uppercased() + $0.dropFirst() }
            .joined(separator: " ")
    }
}
