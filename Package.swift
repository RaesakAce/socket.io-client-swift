 // swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SocketIO",
    products: [
        .library(name: "SocketIO", targets: ["SocketIO"])
    ],
    dependencies: deps,
    targets: [
        .target(name: "SocketIO", dependencies: ["Engine"]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ]
)

let deps: [Package.Dependency]

#if !os(Linux)
deps = [.Package(url: "https://github.com/nuclearace/Starscream", majorVersion: 8)]
#else
deps = [.Package(url: "https://github.com/vapor/engine", majorVersion: 2)]
#endif
