// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "BIP32",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BIP32",
            targets: ["BIP32"]
        )
    ], 
    targets: [
        .binaryTarget(
            name: "CryptoSwift",
            url: "https://github.com/krzyzanowskim/CryptoSwift/releases/download/1.4.3/CryptoSwift.xcframework.zip",
            checksum: "5eaa8fe30805789ad5472edb27182d41afecf1283f0c6efb0afc9261b28f5cf6"
        ),
        .target(
            name: "BIP32",
            dependencies: ["CryptoSwift"]
        ),
        .testTarget(
            name: "BIP32Tests",
            dependencies: ["BIP32"]
        )
    ]
)
