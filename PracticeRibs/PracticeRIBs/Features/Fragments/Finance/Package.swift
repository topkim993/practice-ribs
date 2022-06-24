// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let package = Package(
    name: "Finance",
    platforms: [
      .iOS(.v14)
    ],
    products: [
        .library(
            name: "FinanceHome",
            targets: ["FinanceHome"]
        )
    ],
    dependencies: [
      .package(path: "../../../UserInterface/DesignSystem"),
      .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.5.0"))
    ],
    targets: [
        .target(
            name: "FinanceHome",
            dependencies: [
              "DesignSystem"
            ],
            path: "Sources/Presentation/FinanceHome"
        )
    ]
)
