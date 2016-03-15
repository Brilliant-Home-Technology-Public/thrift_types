namespace py thrift_types.discovery

struct Switch {
  1: string name
  2: string ip_address
  3: i32 port
}

struct Switches {
  1: list<Switch> discovered_switches
}