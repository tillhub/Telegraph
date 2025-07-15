// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "TillhubTelegraph",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "TillhubTelegraph",
            targets: ["TillhubTelegraph"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/tillhub/CocoaAsyncSocket/CocoaAsyncSocket.git", from: "7.6.6"),
        .package(url: "https://github.com/Building42/HTTPParserC.git", from: "9.2.0")
    ],
    targets: [
        .target(
            name: "Telegraph",
            dependencies: ["CocoaAsyncSocket", "HTTPParserC"],
            path: "Sources"
        ),
        .testTarget(
            name: "TelegraphTests",
            dependencies: ["CocoaAsyncSocket", "HTTPParserC", "Telegraph"],
            path: "Tests"
        )
    ]
)
