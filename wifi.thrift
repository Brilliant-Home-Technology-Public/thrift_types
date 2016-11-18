namespace py thrift_types.wifi

enum AssociationStatusType {
  UNKNOWN = 0,
  SUCCESS = 1,
  ERROR_GENERIC = 2,
  ERROR_INVALID_KEY = 3,
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
}

struct IPv4AddressInfo {
  // TODO also report them in machine-readable form?
  1: string address
  2: string netmask
  3: string gateway
}

struct Network {
  1: string name
  2: SecurityType security
  3: byte signal_strength
  4: optional IPv4AddressInfo ipv4_address_info
  5: NetworkStatusType status
}

struct AvailableNetworks {
  1: list<Network> networks
}
