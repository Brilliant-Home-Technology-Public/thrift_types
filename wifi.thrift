namespace py thrift_types.wifi
namespace java thrift_types.wifi

enum AssociationStatusType {
  UNKNOWN = 0,
  SUCCESS = 1,
  ERROR_GENERIC = 2,
  ERROR_INVALID_KEY = 3,
  NETWORK_NOT_FOUND = 4,
}

enum SecurityType {
  UNKNOWN = 0,
  NONE = 1,
  WEP = 2,
  PRESHARED_KEY = 3,
}

enum NetworkStatusType {
  UNKNOWN = 0,
  IDLE = 1,
  ASSOCIATING = 2,
  READY = 3,
  ONLINE = 4,
  FAILURE = 5,
  DISCONNECTING = 6,
  CONFIGURING = 7,
}

struct IPv4AddressInfo {
  // TODO also report them in machine-readable form?
  1: string address
  2: string netmask
  3: optional string gateway
}

struct IPv6AddressInfo {
  1: string address
  2: i16 prefix_length
  3: optional string gateway
}

struct Network {
  1: optional string name
  2: SecurityType security
  3: byte signal_strength
  4: optional IPv4AddressInfo ipv4_address_info
  5: NetworkStatusType status
  6: optional bool force_disable_ipv6
  7: optional IPv6AddressInfo ipv6_address_info
}

struct AvailableNetworks {
  1: list<Network> networks
}

struct HostedNetwork {
  1: optional string name
  2: optional string passphrase
  3: optional binary vendor_elements
}
