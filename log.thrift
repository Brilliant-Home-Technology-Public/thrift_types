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
  SEARCHING = 7
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
const string UI_THIRDPARTY_DEVICE_NOTIFICATION_VIEW_TABLE_NAME = "ui_thirdparty_device_notification_view"
const string UI_THIRDPARTY_DEVICE_BUTTON_TAPPED_TABLE_NAME = "ui_thirdparty_device_button_tapped"
const string UI_THIRDPARTY_DEVICE_NOTIFICATION_BUTTON_TAPPED_TABLE_NAME = "ui_thirdparty_device_notification_button_tapped"
const string UI_THIRDPARTY_INTEGRATION_SCREEN_VIEW_TABLE_NAME = "ui_thirdparty_integration_screen_view"
const string UI_THIRDPARTY_INTEGRATION_BUTTON_TAPPED_TABLE_NAME = "ui_thirdparty_integration_button_tapped"
const string UI_THIRDPARTY_INTEGRATION_NOTIFICATION_VIEW_TABLE_NAME = "ui_thirdparty_integration_notification_view"
const string UI_THIRDPARTY_INTEGRATION_NOTIFICATION_BUTTON_TAPPED_TABLE_NAME = "ui_thirdparty_integration_notification_button_tapped"
const string UI_LIST_DEVICES_SCREEN_VIEW_EVENT_TABLE_NAME = "list_devices_screen_view"
const string UI_ADD_SHORTCUT_BUTTON_TAPPED_TABLE_NAME = "ui_add_shortcut_button_tapped"
const string UI_CHANGE_HOME_SCREEN_PIN_TABLE_NAME = "change_home_screen_pin"
const string UI_DELETE_HOME_SCREEN_PIN_TABLE_NAME = "delete_home_screen_pin"
const string UI_IMPORT_PARTNER_SCENE_TABLE_NAME = "import_partner_scene"
const string UI_SCENE_EXECUTION_TABLE_NAME = "ui_scene_execution"
const string UI_HOMESCREEN_NOTIFICATION_VIEW_TABLE_NAME = "ui_homescreen_notification_view"
const string UI_HOMESCREEN_NOTIFICATION_BUTTON_TAPPED_TABLE_NAME = "ui_homescreen_notification_button_tapped"
const string UI_NOTIFICATION_OPTION_BUTTON_TAPPED_TABLE_NAME = "ui_notification_option_button_tapped"
const string UI_PRIVACY_SETTINGS_UPDATE_TABLE_NAME = "privacy_settings_update"
const string UI_DEVICE_SETTINGS_SCREEN_VIEW_TABLE_NAME = "device_settings_screen_view"
const string UI_ALERT_TAPPED_TABLE_NAME = "alert_tapped"
// END QT LOG TABLE NAMES

// BEGIN EMBEDDED (MESSAGE BUS/PERIPHERALS) TABLE NAMES
const string EMBEDDED_SOFTWARE_UPDATE_TABLE_NAME = "embedded_software_update"
const string EMBEDDED_SCENE_EXECUTION_AUTOMATION_TABLE_NAME = "embedded_scene_execution_automation"
const string EMBEDDED_BRILLIANT_SWITCH_SET_SLIDER_CONFIG_TABLE_NAME = "embedded_brilliant_switch_set_slider_config"
const string EMBEDDED_RECEIVED_SWITCH_GESTURE_EVENT = "switch_gesture_event"
const string EMBEDDED_MESH_DEVICE_CONNECTIVITY_TABLE_NAME = "mesh_device_connectivity"
const string EMBEDDED_SCENE_EXECUTION_TABLE_NAME = "embedded_scene_execution"
const string EMBEDDED_MESH_FIRMWARE_UPDATE_TABLE_NAME = "mesh_firmware_update"
const string EMBEDDED_MESH_DEVICE_FIRMWARE_REPORT_TABLE_NAME = "mesh_device_firmware_report"
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
const string UI_BUTTON_NAME_ADD_BUTTERFLYMX = "add_butterflymx"
const string UI_BUTTON_NAME_ADD_SCHLAGE = "add_schlage"
const string UI_BUTTON_NAME_ADD_LIFX = "add_lifx"
const string UI_BUTTON_NAME_ADD_TPLINK = "add_tplink"
const string UI_BUTTON_NAME_ADD_GENIE = "add_genie"
const string UI_BUTTON_NAME_ADD_SPECTRUM_BRANDS = "add_spectrum_brands"
const string UI_BUTTON_NAME_NEW_ALARM = "new_alarm"
const string UI_BUTTON_NAME_SET_NEW_ALARM = "set_new_alarm"
const string UI_BUTTON_NAME_CONFIRM_SAVE_ALARM = "confirm:save_alarm"
const string UI_BUTTON_NAME_CONFIRM_CANCEL = "confirm:cancel"
const string UI_BUTTON_NAME_CONFIRM_DELETE_ALARM = "confirm:delete_alarm"
const string UI_BUTTON_NAME_DISMISS = "dismiss"
const string UI_BUTTON_NAME_DELETE_CONFIRM = "delete_confirm"
const string UI_BUTTON_NAME_DELETE_CANCEL = "delete_cancel"
const string UI_BUTTON_NAME_RESET_INTEGRATION = "reset_integration"
const string UI_BUTTON_NAME_RESET_CONFIRM = "reset_confirm"
const string UI_BUTTON_NAME_RESET_CANCEL = "reset_cancel"
const string UI_BUTTON_NAME_CONFIRM_OK = "confirm:ok"
const string UI_BUTTON_NAME_FORGET_NETWORK = "forget_network"
const string UI_BUTTON_NAME_HIDDEN_NETWORK = "hidden_network"
const string UI_BUTTON_NAME_DISCOVERED_NETWORK = "discovered_network"
const string UI_BUTTON_NAME_VIEW_REMOVED_DEVICES = "view_removed_devices"
const string UI_BUTTON_NAME_REDISCOVER = "rediscover"
const string UI_BUTTON_NAME_REMOVE_OFFLINE = "remove_offline"
const string UI_BUTTON_NAME_GESTURE_REDO = "redo"
const string UI_BUTTON_NAME_LOCK_SCREEN_MUSIC_NOW_PLAYING_ON = "lock_screen_music_now_playing_on"
const string UI_BUTTON_NAME_LOCK_SCREEN_MUSIC_NOW_PLAYING_OFF = "lock_screen_music_now_playing_off"
const string UI_BUTTON_NAME_COLOR_CHANGE = "color_change"
const string UI_BUTTON_NAME_CONFIRM_RESET_ALL_SETTINGS = "confirm:reset_all_settings"
const string UI_BUTTON_NAME_MUSIC_WIDGET = "music_widget"
const string UI_BUTTON_NAME_ALL_LIGHTS_ON = "all_lights_on"
const string UI_BUTTON_NAME_ALL_LIGHTS_OFF = "all_lights_off"
const string UI_BUTTON_NAME_DELETE_ROOM = "delete_room"
const string UI_BUTTON_NAME_NEST_INDICATE_INTEREST = "nest_indicate_interest"
const string UI_BUTTON_NAME_COPY_SCENE = "copy_scene"
const string UI_BUTTON_NAME_ADD_PARTNER_SCENE = "add_partner_scene"
const string UI_BUTTON_NAME_ADD_SCENE_ACTION = "add_scene_action"
const string UI_BUTTON_NAME_UPDATE_SCENE = "update_scene"
const string UI_BUTTON_NAME_CONFIRM_DELETE_SCENE = "confirm:delete_scene"
const string UI_BUTTON_NAME_INITIATE_CREATE_SCENE = "initiate:create_scene"
const string UI_BUTTON_NAME_CONFIRM_CREATE_SCENE = "confirm:create_scene"
const string UI_BUTTON_NAME_CONFIRM_SAVE = "confirm:save"
const string UI_BUTTON_NAME_VIEW_DEVICES = "view_devices"
const string UI_BUTTON_NAME_VIEW_INTEGRATIONS = "view_integrations"
const string UI_BUTTON_NAME_CHANGE_SHORTCUT = "change_shortcut"
const string UI_BUTTON_NAME_REMOVE_SHORTCUT = "remove_shortcut"
const string UI_BUTTON_NAME_EDIT_SCENE = "edit_scene"
const string UI_BUTTON_NAME_VISIT_SETTINGS = "visit_settings"
const string UI_BUTTON_NAME_ACCEPT = "accept"
const string UI_BUTTON_NAME_DECLINE = "decline"
const string UI_BUTTON_NAME_GRANT_ACCESS = "grant_access"
const string UI_BUTTON_NAME_TALK = "talk"
const string UI_BUTTON_NAME_MUTE = "mute"
const string UI_BUTTON_NAME_LINE_IN_PLAYBACK = "line_in:play"
const string UI_BUTTON_NAME_TV_PLAYBACK = "tv:play"
const string UI_BUTTON_NAME_CHECK_COMPATIBILITY = "check_compatibility"
const string UI_BUTTON_NAME_RECONFIGURE = "re-configure"
const string UI_BUTTON_NAME_ONE_TAP_ON = "one_tap_on"
const string UI_BUTTON_NAME_ONE_TAP_OFF = "one_tap_off"
const string UI_BUTTON_NAME_CONTROL_DEVICE_ON = "control_device_on"
const string UI_BUTTON_NAME_CONTROL_DEVICE_OFF = "control_device_off"
const string UI_BUTTON_NAME_ROOM_SELECTION = "room_selection"
const string UI_BUTTON_NAME_DEFAULT_SETTINGS = "default_settings"
const string UI_BUTTON_NAME_SLIDER_INDEX = "slider_index"
const string UI_BUTTON_NAME_MANAGE_GROUPS = "manage_groups"
const string UI_BUTTON_NAME_GROUP = "group"
const string UI_BUTTON_NAME_EDIT = "edit"
const string UI_BUTTON_NAME_EDIT_COMPLETE = "edit_complete"
const string UI_BUTTON_NAME_SELECT_ALL = "select_all"
const string UI_BUTTON_NAME_DESELECT_ALL = "deselect_all"
const string UI_BUTTON_NAME_EDIT_NAME = "edit_name"
const string UI_BUTTON_NAME_ADD_NEW_ROOM = "add_new_room"

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
  9: string notification_type
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
