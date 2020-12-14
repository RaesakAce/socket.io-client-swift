// swift-tools-version:4.0

import PackageDescription

let package = Package(
        name: "SocketIO",
        products: [
            .library(name: "SocketIO", targets: ["SocketIO"])
        ],
        dependencies: [
            .package(url: "https://github.com/vapor/http", from: "3.0.0"),
        ],
        targets: [
            .target(name: "SocketIO", dependencies: [.product(name: "HTTPKit", package: "http"),]),
            .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
        ]
)