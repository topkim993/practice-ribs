// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Persistance",
    products: [
        .library(
            name: "Persistance",
            targets: ["Persistance"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Persistance",
            dependencies: []
        )
    ]
)
