// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fulcrum",
    platforms: [.iOS(.v13), .macOS(.v10_15), .macCatalyst(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "Fulcrum", targets: ["Fulcrum"])
    ],
    dependencies: [],
    targets: [
        .target(name: "Fulcrum", dependencies: []),
        .testTarget(name: "FulcrumTests", dependencies: ["Fulcrum"])
    ]
)
