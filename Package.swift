// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ThockRef",
    platforms: [.macOS(.v13)],
    targets: [
        .executableTarget(
            name: "ThockRef",
            path: "Sources/ThockRef",
            exclude: ["Resources/Info.plist"]
        )
    ]
)
