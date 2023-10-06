// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ASPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ASPM",
            targets: ["ASPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/iOS-Minhyun/BSPM.git", from: "0.0.0")
    ],
    targets: [
        .target(
            name: "ASPM",
            dependencies: [
                .target(name: "AFramework"),
                .product(name: "BSPM", package: "BSPM")
            ]),
        .testTarget(
            name: "ASPMTests",
            dependencies: ["ASPM"]),
        .binaryTarget(name: "AFramework", path: "./Sources/AFramework.xcframework")
    ]
)
