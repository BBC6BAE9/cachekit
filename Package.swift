// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CacheKit",
     platforms: [
        .macOS(.v11), .iOS(.v13), .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CacheKit",
            targets: ["CacheKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swiftlang/swift-docc-plugin.git", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CacheKit"),
        .testTarget(
            name: "CacheKitTests",
            dependencies: ["CacheKit"]),
    ]
)
