// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SocketIO",
    products: [
        .library(name: "SocketIO", targets: ["SocketIO"])
    ],
    dependencies: [
        .Package(url: "https://github.com/vapor/engine", majorVersion: 2)
    ],
    targets: [
        .target(name: "SocketIO", dependencies: ["Engine"]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ]
)
