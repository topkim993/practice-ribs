// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Resources",
    platforms: [
      .iOS(.v14)
    ],
    products: [
        .library(
            name: "Resources",
            targets: ["Resources"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Resources",
            dependencies: []
        )
    ]
)
