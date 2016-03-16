namespace py thrift_types.discovery

struct DeviceInterface {
  1: string name
  2: string ip_address
  3: i32 port
}

struct DeviceInterfaces {
  1: list<DeviceInterface> device_interfaces
}