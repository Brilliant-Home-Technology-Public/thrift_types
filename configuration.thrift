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

struct PeripheralInfo {
  1: string owner
  2: string name
  3: message_bus.PeripheralType peripheral_type
  // The device id the thirdparty has provided
  4: string thirdparty_device_id
}

struct ProcessConfig {
  1: string process_name
  2: string production_module
  3: PeripheralInfo peripheral_info
}

struct ProcessConfigs {
  1: list<ProcessConfig> configs
}

