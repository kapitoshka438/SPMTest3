// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMTest3",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPMTest3",
            targets: ["SPMTest3"]),
    ],
    dependencies: [
        .package(name: "SPMTest1", url: "git@github.com:kapitoshka438/SPMTest1.git", from: "1.0.1"),
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SPMTest3",
            dependencies: [
                .product(name: "SPMTest1", package: "SPMTest1"),
            ]),
        .testTarget(
            name: "SPMTest3Tests",
            dependencies: ["SPMTest3"]),
    ]
)
