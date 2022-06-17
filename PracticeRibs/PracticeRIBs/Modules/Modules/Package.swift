// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",
    products: [
        .library(
            name: "Modules",
            targets: ["Modules"]
        )
    ],
    dependencies: [
        .package(path: "Analytics"),
        .package(path: "Utilities"),
        .package(path: "Network"),
        .package(path: "Persistance")
    ],
    targets: [
        .target(
            name: "Modules",
            dependencies: []
        )
    ]
)
