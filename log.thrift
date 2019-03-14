namespace py thrift_types.log
namespace java thrift_types.log
include "message_bus.thrift"

/*
 * IMPORTANT NOTE:
 * The structs, enums and consts below represent logs made on the Qt app.
 * Not all definitions may be used (originally these were shared with mobile).
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
  FACEPLATE_GANGBOX = 7
}

enum EventDeviceType {
  LIGHT = 1
  LOCK = 2
  CLIMATE = 3
  GENERIC_TOGGLE = 4
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
  DIALOG = 8
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
  PAIRING = 4
  SYNC = 5
  UNSUPPORTED_CONFIGURATION = 6
}

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
const string UI_GANGBOX_LOAD_WARNING_TRIGGERED_TABLE_NAME = "ui_gangbox_load_warning_triggered"
const string UI_NOTIFICATION_VIEW_TABLE_NAME = "notification_view"
const string UI_NOTIFICATION_BUTTON_TAPPED_TABLE_NAME = "ui_notification_button_tapped"
const string UI_ERROR_EVENT_TABLE_NAME = "ui_error"
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
  8: string user_id
  6: ErrorEventType event
  7: string reason
}

struct JoinedHomeEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
}

struct DeviceToggleEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  12: string user_id
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
  11: string user_id
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
  11: string user_id
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
  8: string user_id
  6: string screen_name
  7: EventIconType icon_type
}

struct SceneExecutedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  7: string user_id
  6: string screen_name
}

struct ScreenViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  8: string user_id
  6: string screen_name
  7: string source_screen
}

struct SectionExpansionToggleEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  9: string user_id
  6: string screen_name
  8: bool expanding
}

struct RoomTappedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  8: string user_id
  6: string room_id
  7: i32 peripheral_type_filter
}

struct GangboxLoadWarningTriggeredEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  10: string user_id
  6: i64 load_index
  7: message_bus.PeripheralStatus peripheral_status
  8: bool in_first_use
  9: string screen_name
}

// START: BUTTON NAME CONSTANTS
const string BUTTON_NAME_UPLOAD_PHOTO_START = "upload_photo_start"
const string BUTTON_NAME_UPLOAD_PHOTO_CONFIRM = "upload_photo_confirm"
const string BUTTON_NAME_DELETE_PHOTO_FROM_LIBRARY = "delete_photo_from_library"
const string BUTTON_NAME_DELETE_PHOTO_CONFIRM = "delete_photo_confirm"
const string UI_BUTTON_NAME_LIST_DEVICES_EDIT = "list_devices_edit"
const string UI_BUTTON_NAME_ADD_DEVICE = "add_device"
const string UI_BUTTON_NAME_ADD_UNSUPPORTED_DEVICE = "add_unsupported_device"
const string UI_BUTTON_NAME_ADD_ECOBEE = "add_ecobee"
const string UI_BUTTON_NAME_ADD_HONEYWELL = "add_honeywell"
const string UI_BUTTON_NAME_ADD_HUE = "add_hue"
const string UI_BUTTON_NAME_ADD_RING = "add_ring"
const string UI_BUTTON_NAME_ADD_SMARTTHINGS = "add_smartthings"
const string UI_BUTTON_NAME_ADD_SONOS = "add_sonos"
const string UI_BUTTON_NAME_ADD_WEMO = "add_wemo"
const string UI_BUTTON_NAME_ADD_ALMOND = "add_almond"
const string UI_BUTTON_NAME_ADD_NEST = "add_nest"
const string UI_BUTTON_NAME_ADD_SOMFY = "add_somfy"
const string UI_BUTTON_NAME_ADD_AUGUST = "add_august"
const string UI_BUTTON_NAME_NEW_ALARM = "new_alarm"
const string UI_BUTTON_NAME_SET_NEW_ALARM = "set_new_alarm"
const string UI_BUTTON_NAME_CONFIRM_SAVE_ALARM = "confirm:save_alarm"
const string UI_BUTTON_NAME_CONFIRM_CANCEL = "confirm:cancel"
const string UI_BUTTON_NAME_CONFIRM_DELETE_ALARM = "confirm:delete_alarm"
const string UI_BUTTON_NAME_DISMISS = "dismiss"
const string UI_BUTTON_NAME_DELETE_CONFIRM = "delete_confirm"
const string UI_BUTTON_NAME_RESET_CONFIRM = "reset_confirm"
const string UI_BUTTON_NAME_RESET_CANCEL = "reset_cancel"
const string UI_BUTTON_NAME_CONFIRM_OK = "confirm:ok"
const string UI_BUTTON_NAME_FORGET_NETWORK = "forget_network"
const string UI_BUTTON_NAME_HIDDEN_NETWORK = "hidden_network"
const string UI_BUTTON_NAME_DISCOVERED_NETWORK = "discovered_network"

// NOTE:DO NOT ADD ANY FIELDS TO SimpleButtonTappedEvent STRUCT
// If A ButtonTapped log needs another field, make a new struct
// ONLY USE CONSTANTS (add above) FOR button_name
struct SimpleButtonTappedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  8: string user_id
  6: string screen_name
  7: string button_name
}

struct UploadPhotoEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  8: string user_id
  6: string screen_name
  7: i32 status_code
}

struct EmbeddedSoftwareUpdateEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  10: string user_id
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
  7: string user_id
  6: UIMandatoryUpdateImpressionContextType context
}

struct UIHomeScreenIconTapEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  9: string user_id
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
  6: string user_id
}

struct UIAbandonSetupEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  7: string user_id
  6: UIAbandonSetupStepType step
}

struct UICompleteSetupEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
}

struct UINotificationViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  8: string user_id
  6: string screen_name
  7: string notification_name
}

struct UINotificationButtonTappedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  9: string user_id
  6: string screen_name
  7: string notification_name
  8: string button_name
}
