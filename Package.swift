// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AemiUI",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "AemiUI", targets: ["AemiUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Aemi-Studio/AemiUtilities", branch: "main"),
    ],
    targets: [
        .target(name: "AemiUI", dependencies: ["AemiUtilities"]),
    ],
    swiftLanguageModes: [.version("6.2")]
)
