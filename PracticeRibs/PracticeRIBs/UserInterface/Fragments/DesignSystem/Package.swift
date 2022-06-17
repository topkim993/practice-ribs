// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "DesignSystem",
  platforms: [
    .iOS(.v14)
  ],
  products: [
    .library(
      name: "DesignSystem",
      targets: ["DesignSystem"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .exact("6.5.0"))
  ],
  targets: [
    .target(
      name: "DesignSystem",
      dependencies: [
        "SnapKit",
        .product(name: "RxCocoa", package: "RxSwift")
      ]
    )
  ]
)


