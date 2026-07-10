// swift-tools-version: 6.3.3

import PackageDescription

let package = Package(
    name: "swift-ip-address",
    platforms: [
        .macOS(.v26),
        .iOS(.v26),
        .tvOS(.v26),
        .watchOS(.v26),
        .visionOS(.v26)
    ],
    products: [
        .library(
            name: "IP Address",
            targets: ["IP Address"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/swift-standards/swift-ipv4-standard.git", branch: "main"),
        .package(url: "https://github.com/swift-standards/swift-ipv6-standard.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "IP Address",
            dependencies: [
                .product(name: "IPv4 Standard", package: "swift-ipv4-standard"),
                .product(name: "IPv6 Standard", package: "swift-ipv6-standard"),
            ]
        ),
        .testTarget(
            name: "IP Address Tests",
            dependencies: [
                "IP Address",
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    let ecosystem: [SwiftSetting] = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableExperimentalFeature("LifetimeDependence"),
        .enableExperimentalFeature("Lifetimes"),
        .enableExperimentalFeature("SuppressedAssociatedTypes"),
        .enableUpcomingFeature("InferIsolatedConformances"),
        .enableUpcomingFeature("LifetimeDependence"),
    ]

    let package: [SwiftSetting] = []

    target.swiftSettings = (target.swiftSettings ?? []) + ecosystem + package
}
