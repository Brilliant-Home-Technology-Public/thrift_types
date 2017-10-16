namespace py thrift_types.discovery
namespace java thrift_types.discovery

const string WEMO_DIMMER_MODEL_NAME = "Dimmer"
const string WEMO_INSIGHT_MODEL_NAME = "Insight"
// The Wemo Smart Plug and Mini Smart Plug broadcast with the same name for discovery
// we need to call another API once the peripheral is setup to get the real model name
const string WEMO_SOCKET_MODEL_NAME = "Switch"
const string WEMO_MINI_SOCKET_MODEL_NAME = "Mini"
const string WEMO_SOCKET_MODEL_NAME_FOR_DISCOVERY = "Socket"
// The Wemo Switch device name has different casing between discovery and their XML API :(
const string WEMO_SWITCH_MODEL_NAME = "LightSwitch"
const string WEMO_SWITCH_MODEL_NAME_FOR_DISCOVERY = "Lightswitch"

const string DEVICE_PROVISIONING_MDNS_SERVICE_TYPE = "_init-brilliant._tcp.local."
const string REMOTE_BRIDGE_MDNS_SERVICE_SUFFIX = "-brilliant._tcp.local."
const string BOSE_ST_MDNS_SERVICE_TYPE = "_soundtouch._tcp.local."

struct DeviceInterface {
  1: string device_id
  2: string ip_address # Remote bridge ip address
  3: optional i32 port # Remote bridge port
  4: optional string object_store_host
  5: optional i32 object_store_port
  6: optional i32 provisioning_port
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
  BOSE_ST = 5,
}

enum DiscoveryType {
  MDNS = 1,
  UPNP = 2,
}

struct ThirdpartyDeviceInterface {
  1: string ip_address
  2: i32 port
  3: ThirdpartyDeviceType device_type
  4: DiscoveryType discovery_type
}

struct ThirdpartyDeviceInterfaces {
  1: list<ThirdpartyDeviceInterface> device_interfaces
}

