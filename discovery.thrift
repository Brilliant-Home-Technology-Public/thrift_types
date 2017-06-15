namespace py thrift_types.discovery

const string WEMO_DIMMER_MODEL_NAME = "Dimmer"
const string WEMO_INSIGHT_MODEL_NAME = "Insight"
const string WEMO_MINI_MODEL_NAME = "Socket"
const string WEMO_SWITCH_MODEL_NAME = "Lightswitch"

struct DeviceInterface {
  1: string device_id
  2: string ip_address # Remote bridge ip address
  3: i32 port # Remote bridge port
  4: string object_store_host
  5: i32 object_store_port
}

struct DeviceInterfaces {
  1: list<DeviceInterface> device_interfaces
}

enum ThirdpartyDeviceType {
  UNKNOWN = 0,
  SONOS = 1,
  PHILIPS_HUE = 2,
  ALMOND = 3,
  WEMO = 4,
}

struct ThirdpartyDeviceInterface {
  1: string ip_address
  2: i32 port
  3: ThirdpartyDeviceType device_type
}

struct ThirdpartyDeviceInterfaces {
  1: list<ThirdpartyDeviceInterface> device_interfaces
}

