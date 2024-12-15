// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Tiro",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "Tiro",
            targets: ["Tiro"]),
        .executable(
            name: "TiroApp",
            targets: ["TiroApp"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Tiro",
            dependencies: []),
        .executableTarget(
            name: "TiroApp",
            dependencies: ["Tiro"]),
        .testTarget(
            name: "TiroTests",
            dependencies: ["Tiro"]),
        .testTarget(
            name: "TiroUITests",
            dependencies: ["TiroApp"])
    ]
) 