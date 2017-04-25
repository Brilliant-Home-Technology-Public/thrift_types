namespace py thrift_types.discovery

struct DeviceInterface {
  1: string device_id
  2: string ip_address
  3: i32 port
}

struct DeviceInterfaces {
  1: list<DeviceInterface> device_interfaces
}

enum ThirdpartyDeviceType {
	UNKNOWN = 0,
	SONOS = 1,
	PHILIPS_HUE = 2,
}

struct ThirdpartyDeviceInterface {
  1: string ip_address
  2: i32 port
  3: ThirdpartyDeviceType device_type
}

struct ThirdpartyDeviceInterfaces {
	1: list<ThirdpartyDeviceInterface> device_interfaces
}

