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

enum DayOfWeek {
  MONDAY = 0,
  TUESDAY = 1,
  WEDNESDAY = 2,
  THURSDAY = 3,
  FRIDAY = 4,
  SATURDAY = 5,
  SUNDAY = 6,
}

struct SceneAction {
  1: string id
  2: string device_id
  3: string peripheral_name
  4: string variable_name
  5: string variable_value
}

struct Scene {
  1: string id
  2: string title
  3: list<SceneAction> actions
  4: bool timer_enabled
  5: optional i64 trigger_time
  6: optional list<DayOfWeek> daysEnabled
  7: optional i64 starting_date_range
  8: optional i64 ending_date_range
  9: string icon_url
}
