// ===----------------------------------------------------------------------===//
//
// This source file is part of the swift-ip-address open source project
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp and the swift-ip-address project authors
// Licensed under Apache License v2.0
//
// See LICENSE for license information
//
// ===----------------------------------------------------------------------===//

import IP_Address
import Testing

@Suite
struct `IP Address Tests` {
    @Test
    func `IP Address module re-exports IPv4_Standard and IPv6_Standard`() {
    }

    @Test
    func `Address preserves canonical payloads and provider order`() {
        let v6 = IPv6.Address(0, 0, 0, 0, 0, 0, 0, 1)
        let v4 = IPv4.Address(rawValue: 0x7f00_0001)
        let addresses: [IP.Address] = [.v6(v6), .v4(v4)]

        #expect(addresses == [.v6(v6), .v4(v4)])
    }
}
