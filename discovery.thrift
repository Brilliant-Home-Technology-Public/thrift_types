namespace py thrift_types.discovery
namespace java thrift_types.discovery

const string SERVICE_VARIABLE_PREFIX = "service:"

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
const string WEMO_OUTDOOR_PLUG_MODEL_NAME = "OutdoorPlug"

const string DEVICE_PROVISIONING_MDNS_SERVICE_TYPE = "_init-brilliant._tcp.local."
const string REMOTE_BRIDGE_MDNS_SERVICE_SUFFIX = "-brilliant._tcp.local."
const string BOSE_ST_MDNS_SERVICE_TYPE = "_soundtouch._tcp.local."

// Attribute name for unique ID a Hue bridge returns for SSDP discovery
const string HUE_BRIDGE_ID_ATTRIBUTE = "hue-bridgeid"

// Attribute for USN (Unique Service Name)
const string USN_ATTRIBUTE = "USN"

// Search target used to discover Sonos speakers
const string SONOS_UPNP_SEARCH_TARGET = "urn:smartspeaker-audio:service:SpeakerGroup:1"
// Attributes that Sonos speakers return through SSDP discovery
const string SONOS_GROUP_INFO_ATTRIBUTE = "GROUPINFO.SMARTSPEAKER.AUDIO"
const string SONOS_GROUP_ID_ATTRIBUTE = "GROUP_ID"
const string SONOS_WEBSOCKET_ATTRIBUTE = "WEBSOCK.SMARTSPEAKER.AUDIO"
const string SONOS_HOUSEHOLD_ID_ATTRIBUTE = "HOUSEHOLD.SMARTSPEAKER.AUDIO"

// Attribute name for LIFX Device IDs
const string LIFX_DEVICE_ID_ATTRIBUTE_NAME = "lifx_device_id"

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
  LIFX = 6,
}

enum DiscoveryType {
  MDNS = 1,
  UPNP = 2,
  NUPNP = 3,
  UDP = 4,
}

struct ThirdpartyDeviceInterface {
  1: string ip_address
  2: i32 port
  3: ThirdpartyDeviceType device_type
  4: DiscoveryType discovery_type
  5: optional map<string, string> device_attributes // Additional attributes the device broadcasts
}

struct ThirdpartyDeviceInterfaces {
  1: list<ThirdpartyDeviceInterface> device_interfaces
}

struct WebAPIEndpoint {
  1: string scheme
  2: string host
  3: i32 port
  4: i32 authenticated_client_port
}

struct AvailableDetailedDiscoveryModes {
  1: list<ThirdpartyDeviceType> discovery_modes
}

struct Service {
  1: string name
  2: string service_type
  3: i32 port
  4: map<string, string> properties
}
