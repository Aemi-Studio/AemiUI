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
    .package(url: "https://github.com/Aemi-Studio/aemi.git", revision: "04cfb910446f446476c0c853317931f3444b1323")
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
