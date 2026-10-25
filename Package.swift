// swift-tools-version: 6.3
import PackageDescription

let package = Package(
  name: "AemiUI",
  platforms: [
    .iOS(.v18), .macOS(.v15), .tvOS(.v18), .watchOS(.v11), .visionOS(.v2),
  ],
  products: [
    .library(name: "AemiUI", targets: ["AemiUICompatibility"])
  ],
  dependencies: [
    .package(url: "https://github.com/Aemi-Studio/aemi.git", revision: "785c6b25cb3f4dc16ca2334fd69428fae4ee0b01")
  ],
  targets: [
    .target(
      name: "AemiUICompatibility",
      dependencies: [
        .product(name: "AemiUI", package: "aemi")
      ]
    ),
    .testTarget(
      name: "CompatibilityTests",
      dependencies: ["AemiUICompatibility"],
    ),
  ],
  swiftLanguageModes: [.v6]
)
