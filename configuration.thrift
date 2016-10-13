namespace py thrift_types.configuration

include "message_bus.thrift"

// Art Configuration
struct ArtPiece {
  1: string id
  2: string url
  3: string content_type
}

struct ArtLibrary {
  1: string id
  2: string title
  3: list<ArtPiece> art_pieces
}

struct ArtLibraryConfig {
  1: string library_id
  2: bool enabled
  3: list<string> disabled_art_pieces
}

enum ArtDisplayFrequency {
  ALL_THE_TIME = 0,
  ON_MOTION_DETECTED = 1,
}

// Thirdparty Device Configurations

enum VirtualDeviceType {
  SMARTTHINGS = 0,
  WINK = 1,
  HUE_BRIDGE = 2,
  SONOS = 3,
}

struct SmartthingsPeripheralConfiguration {
  1: string base_url
  2: string bearer_token
}

struct WinkPeripheralConfiguration {
  1: string subscription_key
  2: string subscription_channel
  3: string bearer_token
  4: string base_url
}

struct HueBridgePeripheralConfiguration {
  1: string username
  2: string base_url
}

struct SonosPeripheralConfiguration {
  1: string hardware_version
}

struct PeripheralConfiguration {
  1: string owner
  2: string name
  3: message_bus.PeripheralType peripheral_type
  4: string device_id
  7: VirtualDeviceType device_type
  8: string serialized_device_data
}

struct PeripheralInfo {
  1: PeripheralConfiguration configuration
  2: optional map<string, message_bus.Variable> variables
}

struct ProcessConfig {
  1: string process_name
  2: string production_module
  3: PeripheralInfo peripheral_info
}

struct ProcessConfigs {
  1: list<ProcessConfig> configs
}

