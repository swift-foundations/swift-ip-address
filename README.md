# swift-ip-address

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

IPv4 and IPv6 address value types for Swift.

## Installation

```swift
dependencies: [
    .package(url: "https://github.com/swift-foundations/swift-ip-address.git", branch: "main")
]
```

Add the product to your target:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "IP Address", package: "swift-ip-address")
    ]
)
```

## License

Apache 2.0. See [LICENSE](LICENSE.md).
