// ===----------------------------------------------------------------------===//
//
// This source file is part of the swift-ip-address open source project
//
// Copyright (c) 2026 Coen ten Thije Boonkkamp and the swift-ip-address project authors
// Licensed under Apache License v2.0
//
// See LICENSE for license information
//
// ===----------------------------------------------------------------------===//

extension IP {
    /// A provider-neutral Internet Protocol address.
    ///
    /// The payload remains the canonical address defined by RFC 791 or
    /// RFC 4291. Collections of this sum preserve the provider's result order;
    /// this type introduces no family preference or connection-racing policy.
    public enum Address: Hashable, Sendable {
        case v4(IPv4.Address)
        case v6(IPv6.Address)
    }
}
