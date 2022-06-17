// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Features",
    platforms: [
      .iOS(.v14)
    ],
    products: [
        .library(
            name: "Features",
            targets: ["Features"]),
    ],
    dependencies: [
        .package(path: "Finance"),
        .package(path: "Transport")
    ],
    targets: [
        .target(
            name: "Features",
            dependencies: [
                .product(name: "FinanceHome", package: "Finance")
            ]
        )
    ]
)
