// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UserInterface",
    products: [
        .library(
            name: "UserInterfaces",
            targets: ["UserInterfaces"]),
    ],
    dependencies: [
        .package(path: "DesignSystem"),
        .package(path: "Resources")
    ],
    targets: [
        .target(
            name: "UserInterfaces",
            dependencies: []
        )
    ]
)
