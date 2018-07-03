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
  LOCK = 2
  CLIMATE = 3
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
  LOCK = 2
}

enum LevelType {
  INTENSITY = 1
  VOLUME = 2
  TEMPERATURE = 3
}

enum SelectType {
  HVAC_MODE = 1
  FAN_MODE = 2
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
  STEP_TOGGLE = 6
  SELECTION_MENU = 7
}

enum UIMandatoryUpdateImpressionContextType {
  STARTUP_SCREEN = 1
  SYSTEM_NOTIFICATION = 2
}

enum UIAbandonSetupStepType {
  UNKNOWN = 0
  WIFI = 1
  LOGIN = 2
  MANDATORY_UPDATE = 3
}

// BEGIN MOBILE LOG TABLE NAMES
const string MOBILE_ERROR_EVENT_TABLE_NAME = "mobile_error"
const string MOBILE_DEVICE_TOGGLE_EVENT_TABLE_NAME = "mobile_device_toggle"
const string MOBILE_DEVICE_LEVEL_EVENT_TABLE_NAME = "mobile_device_level"
const string MOBILE_DEVICE_SELECT_EVENT_TABLE_NAME = "mobile_device_select"
const string MOBILE_ICON_SELECTED_EVENT_TABLE_NAME = "mobile_icon_selected"
const string MOBILE_JOINED_HOME_EVENT_TABLE_NAME = "mobile_joined_home"
const string MOBILE_SCENE_EXECUTED_EVENT_TABLE_NAME = "mobile_scene_executed"
const string MOBILE_SCREEN_VIEW_EVENT_TABLE_NAME = "mobile_screen_view"
const string MOBILE_SECTION_EXPANSION_TOGGLE_EVENT_TABLE_NAME = "mobile_section_expansion_toggle"
const string MOBILE_SIMPLE_BUTTON_TAPPED_EVENT_TABLE_NAME = "mobile_simple_button_tapped"
const string MOBILE_UPLOAD_PHOTO_EVENT_TABLE_NAME = "mobile_upload_photo_status"
// END MOBILE LOG TABLE NAMES

// BEGIN QT LOG TABLE NAMES
// Example Constant, TODO: Complete QT Logs
const string QT_SCREEN_VIEW_EVENT_TABLE_NAME = "screen_view"
const string UI_MANDATORY_UPDATE_IMPRESSION_TABLE_NAME = "ui_mandatory_update_impression"
const string UI_HOME_SCREEN_ICON_TAP_TABLE_NAME = "home_screen_icon"
const string UI_ENTER_SETUP_TABLE_NAME = "ui_enter_setup"
const string UI_ABANDON_SETUP_TABLE_NAME = "ui_abandon_setup"
const string UI_COMPLETE_SETUP_TABLE_NAME = "ui_complete_setup"
const string UI_ROOM_TAPPED_TABLE_NAME = "ui_room_tapped"
const string UI_SIMPLE_BUTTON_TAPPED_TABLE_NAME = "ui_simple_button_tapped"
// END QT LOG TABLE NAMES

// BEGIN EMBEDDED (MESSAGE BUS/PERIPHERALS) TABLE NAMES
const string EMBEDDED_SOFTWARE_UPDATE_TABLE_NAME = "embedded_software_update"
// END EMBEDDED (MESSAGE BUS/PERIPHERALS) TABLE NAMES

// BEGIN EMBEDDED EVENT NAMES
const string EMBEDDED_SOFTWARE_UPDATE_INITIATED_EVENT_NAME = "embedded_update_initiated"
// END EMBEDDED EVENT NAMES

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

struct DeviceSelectEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: EventDeviceType device_type
  8: EventSource source
  9: SelectType select_type
  10: string value
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
  7: string source_screen
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

struct RoomTappedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string room_id
  7: i32 peripheral_type_filter
}

// START: BUTTON NAME CONSTANTS
const string BUTTON_NAME_UPLOAD_PHOTO_START = "upload_photo_start"
const string BUTTON_NAME_UPLOAD_PHOTO_CONFIRM = "upload_photo_confirm"
const string BUTTON_NAME_DELETE_PHOTO_FROM_LIBRARY = "delete_photo_from_library"
const string BUTTON_NAME_DELETE_PHOTO_CONFIRM = "delete_photo_confirm"
const string UI_BUTTON_NAME_LIST_DEVICES_EDIT = "list_devices_edit"
const string UI_BUTTON_NAME_ADD_DEVICE = "add_device"

// NOTE:DO NOT ADD ANY FIELDS TO SimpleButtonTappedEvent STRUCT
// If A ButtonTapped log needs another field, make a new struct
// ONLY USE CONSTANTS (add above) FOR button_name
struct SimpleButtonTappedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string button_name
}

struct UploadPhotoEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: i32 status_code
}

struct EmbeddedSoftwareUpdateEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string event
  7: string current_version
  8: string next_version
  9: bool is_mandatory
}

struct UIMandatoryUpdateImpressionEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: UIMandatoryUpdateImpressionContextType context
}

struct UIHomeScreenIconTapEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string name
  7: bool in_lights_only_mode
  8: i32 number_adjustable_lights_in_home
}

struct UIEnterSetupEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
}

struct UIAbandonSetupEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: UIAbandonSetupStepType step
}

struct UICompleteSetupEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
}
