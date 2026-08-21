extension IP {

    public enum Address: Hashable, Sendable {
        case v4(IPv4.Address)
        case v6(IPv6.Address)
    }
}
