namespace py thrift_types.log
namespace java thrift_types.log

/*
 * IMPORTANT NOTE:
 * The structs below represent logs made on both the Qt and Mobile apps.
 * Not all logs are made on all platforms
 * For each struct there should be at least one corresponding table name (usually per platform)
 * Avoid Optional fields, only use in cases of deprecation and
 * even then, only if absolutely necessary and the intent is to phase out the column.
 * 
 */

const string LOG_ALLOWED_NON_ALPHANUMERIC_CHARACTERS = " ,./;[]-=<>?:{}|~!@#$%^&*()_+"

enum ErrorEventType {
  FAILED_AUTHENTICATION_CODE_ENTRY = 1
  FAILED_DEVICE_DISCOVERY = 2
  FAILED_SET_VARIABLE_REQUEST = 3
  ERRORED_WEBSOCKET_CONNECTION = 4
  REMOTE_BRIDGE_RESPONSE_FAILURE = 5
  FAILED_KNOCK = 6
}

enum EventDeviceType {
  LIGHT = 1
}

enum EventIconType {
  HOME = 1
  MUSIC = 2
  LIGHT = 3
  EYE = 4
  MICROPHONE = 5
  THERMOSTAT = 6
  BELL = 7
  LOCK = 8
  INTERCOM = 9
}

enum ToggleType {
  ON = 1
}

enum LevelType {
  INTENSITY = 1
  VOLUME = 2
  TEMPERATURE = 3
}

enum EventSectionType {
  DEVICE_TYPE_FOR_HOME = 1
  DEVICE_TYPE_FOR_ROOM = 2
  ROOM_FOR_DEVICE_TYPE = 3
}

enum EventSource {
  BUTTON = 1
  ROW = 2
  SLIDER = 3
  SWITCH = 4
  COUNTER = 5
}

// BEGIN MOBILE LOG TABLE NAMES
const string MOBILE_ERROR_EVENT_TABLE_NAME = "mobile_error"
const string MOBILE_JOINED_HOME_EVENT_TABLE_NAME = "mobile_joined_home"
const string MOBILE_DEVICE_TOGGLE_EVENT_TABLE_NAME = "mobile_device_toggle"
const string MOBILE_DEVICE_LEVEL_EVENT_TABLE_NAME = "mobile_device_level"
const string MOBILE_ICON_SELECTED_EVENT_TABLE_NAME = "mobile_icon_selected"
const string MOBILE_SCENE_EXECUTED_EVENT_TABLE_NAME = "mobile_scene_executed"
const string MOBILE_SCREEN_VIEW_EVENT_TABLE_NAME = "mobile_screen_view"
const string MOBILE_SECTION_EXPANSION_TOGGLE_EVENT_TABLE_NAME = "mobile_section_expansion_toggle"
// END MOBILE LOG TABLE NAMES

// BEGIN QT LOG TABLE NAMES
// Example Constant, TODO: Complete QT Logs
const string QT_SCREEN_VIEW_EVENT_TABLE_NAME = "screen_view"
// END QT LOG TABLE NAMES

struct ErrorEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: ErrorEventType event
  7: string reason
}

struct JoinedHomeEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
}

struct DeviceToggleEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: EventDeviceType device_type
  8: EventSource source
  9: ToggleType toggle_type
  10: bool on
  11: bool aggregate
}

struct DeviceLevelEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: EventDeviceType device_type
  8: EventSource source
  9: LevelType level_type
  10: i32 level
}

struct IconSelectedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: EventIconType icon_type
}

struct SceneExecutedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
}

struct ScreenViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
}

struct SectionExpansionToggleEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  8: bool expanding
}
