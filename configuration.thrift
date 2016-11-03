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
  SUNDAY = 0,
  MONDAY = 1,
  TUESDAY = 2,
  WEDNESDAY = 3,
  THURSDAY = 4,
  FRIDAY = 5,
  SATURDAY = 6,
}

enum Month {
  JAN = 1,
  FEB = 2,
  MAR = 3,
  APR = 4,
  MAY = 5,
  JUN = 6,
  JUL = 7,
  AUG = 8,
  SEP = 9,
  OCT = 10,
  NOV = 11,
  DEC = 12,
}

struct CalendarDay {
  1: i32 day_of_month // 1 indexed
  2: Month month // 1 indexed
  3: i32 year
}

struct WeeklyRecurringTime {
  1: optional list<DayOfWeek> days
  2: optional i32 seconds_from_midnight
  3: optional CalendarDay start_day // Inclusive, if none specified starts right meow
  4: optional CalendarDay end_day // Inclusive, if none specified continues forever
}

struct Trigger {
  1: bool enabled
  2: WeeklyRecurringTime time_trigger
}

struct SceneMultiAction {
  1: string id
  2: bool enabled
  3: list<string> rooms
  4: message_bus.PeripheralType peripheral_type
  5: map<string, string> variables
}

struct SceneAction {
  1: string id
  2: bool enabled
  3: string device_id
  4: string peripheral_name
  5: map<string, string> variables
}

struct Scene {
  1: string id
  2: string title
  3: string icon_url
  4: list<SceneAction> actions
  5: list<SceneMultiAction> multiActions
  6: Trigger trigger
}

// Home Configuration

struct Room {
  1: string name
}

struct Rooms {
  1: map<string, Room> rooms
}

