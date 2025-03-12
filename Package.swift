// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "VoiceActivityDetector",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "VoiceActivityDetector",
            type: .static,
            targets: ["VoiceActivityDetector", "libfvad"]),
    ],
    targets: [
        .target(
            name: "VoiceActivityDetector",
            dependencies: ["libfvad"],
            path: "Sources/VoiceActivityDetector"),
        .target(
            name: "libfvad",
            path: "Sources/libfvad",
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("src")])
    ]
)
