namespace py thrift_types.log
namespace java thrift_types.log
include "message_bus.thrift"

/*
 * IMPORTANT NOTE:
 * The structs, enums and consts below represent logs made on the Qt app and switch-embedded.
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
  MOBILE_CONFIGURATION = 8
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
const string UI_DEVICE_ALERT_TAPPED_TABLE_NAME = "device_alert_tapped"
const string UI_DEVICE_NOTIFICATION_VIEW_TABLE_NAME = "ui_device_notification_view"
const string UI_DEVICE_BUTTON_TAPPED_TABLE_NAME = "ui_device_button_tapped"
const string UI_DEVICE_NOTIFICATION_BUTTON_TAPPED_TABLE_NAME = "ui_device_notification_button_tapped"
const string UI_TRACKED_STAGE_TABLE_NAME = "ui_tracked_stage"
const string UI_DEVICE_NOTIFICATION_OPTION_VALUE_APPLIED_TABLE_NAME = "ui_device_notification_option_value_applied"
const string UI_PASSCODE_ATTEMPT = "passcode_attempt"
const string UI_CONTROL_FEATURE_FLAG_TABLE_NAME = "control_feature_flag"
const string UI_CONTROL_THIRDPARTY_STREAM_TABLE_NAME = "control_thirdparty_stream"
const string UI_ALEXA_AUTO_ENABLE_ATTEMPT_TABLE_NAME = "alexa_auto_enable_attempt"
const string UI_CLIMATE_WIDGET_CONFIGURATION_TABLE_NAME = "climate_widget_configuration"
const string UI_ARMED_STATE_WIDGET_TABLE_NAME = "armed_state_widget"
const string UI_SECURITY_SYSTEM_ADJUSTMENT_ATTEMPT = "security_system_adjustment_attempt"
const string UI_NTP_SYNC_TIMEOUT_TABLE_NAME = "ntp_sync_timeout"

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
const string EMBEDDED_SET_ACK_TABLE_NAME = "embedded_set_ack"
const string EMBEDDED_PHYSICAL_DEVICE_AVAILABLE_DURATION = "physical_device_available_duration"
const string EMBEDDED_PHYSICAL_DEVICE_AVAILABLE_DURATION_OUTSIDE_LOG_WINDOW = "physical_device_available_duration_outside_log_window"
const string EMBEDDED_MOTION_HIGH_THRESHOLD_MIGRATION_TABLE_NAME = "motion_high_threshold_migration"
const string EMBEDDED_SWITCH_MOTION_LARGE_HOME_TABLE_NAME = "switch_motion_large_home"
const string EMBEDDED_LOAD_COMPATIBILITY_ERROR = "embedded_load_compatibility_error"
const string EMBEDDED_WIFI_NETWORK_CHANGE = "wifi_network_change"
const string EMBEDDED_SCENE_STRUCTURE_UPDATE_TABLE_NAME = "scene_structure_update"
const string EMBEDDED_SWITCH_LOAD_TYPE_UPDATE_ERROR = "switch_load_type_update_error"
const string EMBEDDED_SWITCH_COMPACT_COMM_PROTOCOL_SYNC_FAILURE = "switch_compact_comm_protocol_sync_failure"
const string EMBEDDED_WAKEWORD_DETECTOR_VERSION_TABLE_NAME = "embedded_wakeword_detector_version"
const string EMBEDDED_GROUP_UPDATE_TABLE_NAME = "group_update"
const string EMBEDDED_ALEXA_AUTO_ENABLE_ATTEMPT_TABLE_NAME = "alexa_auto_enable_attempt"
const string EMBEDDED_SWITCH_LOAD_TYPE_UPDATE_TABLE_NAME = "switch_load_type_update"
const string EMBEDDED_SWITCH_PROPERTY_INCONSISTENCY_TABLE_NAME = "switch_property_inconsistency"
const string EMBEDDED_AUTOMATIC_SWITCH_PERIPHERAL_TYPE_UPDATE_TABLE_NAME = "automatic_switch_peripheral_type_update"
const string EMBEDDED_AUTOMATIC_SWITCH_LOAD_TYPE_UPDATE_TABLE_NAME = "automatic_switch_load_type_update"
const string EMBEDDED_AUTOMATIC_SWITCH_SLIDER_CONFIG_SYNC_TABLE_NAME = "automatic_switch_slider_config_sync"
const string EMBEDDED_SWITCH_DCDC_REGULATOR_ENABLE_FAILURE = "switch_dcdc_regulator_enable_failure"
const string EMBEDDED_SWITCH_SET_LIGHT_MOTION_CONFIG_TABLE_NAME = "switch_set_light_motion_config_table_name"
const string EMBEDDED_SWITCH_COMPATIBILITY_CHECK_ATTEMPT_TABLE_NAME = "switch_compatibility_check_attempt"
const string EMBEDDED_SWITCH_SET_DIM_SMOOTHING_CONFIG_TABLE_NAME = "switch_set_dim_smoothing_config"
const string EMBEDDED_GESTURE_CONFIGURATION_UPDATE_TABLE_NAME = "embedded_gesture_configuration_update"
const string EMBEDDED_SLIDER_CONFIGURATION_UPDATE_TABLE_NAME = "embedded_slider_configuration_update"
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

// BEGIN ALEXA REQUEST NAME CONSTANTS
const string GET_ALEXA_API_ENDPOINT = "get_alexa_api_endpoint"
const string RETRIEVE_HOME_SKILL = "retrieve_home_skill"
const string GET_ALEXA_AUTH_CODE = "get_alexa_auth_code"
const string ENABLE_HOME_SKILL = "enable_home_skill"
// END ALEXA REQUEST NAME CONSTANTS

// BEGIN HOMEKIT SERVICE TYPE CONSTANTS
const string HOMEKIT_SWITCH_SERVICE_TYPE = "switch"
const string HOMEKIT_LIGHT_SERVICE_TYPE = "light"
const string HOMEKIT_OUTLET_SERVICE_TYPE = "outlet"
const string HOMEKIT_UNKNOWN_SERVICE_TYPE = "unknown"
// END HOMEKIT SERVICE TYPE CONSTANTS

// START: BUTTON NAME CONSTANTS
const string BUTTON_NAME_UPLOAD_PHOTO_START = "upload_photo_start"
const string BUTTON_NAME_UPLOAD_PHOTO_CONFIRM = "upload_photo_confirm"
const string BUTTON_NAME_DELETE_PHOTO_FROM_LIBRARY = "delete_photo_from_library"
const string BUTTON_NAME_DELETE_PHOTO_CONFIRM = "delete_photo_confirm"
const string UI_BUTTON_NAME_LIST_DEVICES_EDIT = "list_devices_edit"
const string UI_BUTTON_NAME_ADD_DEVICE = "add_device"
const string UI_BUTTON_NAME_ADD_DEVICES = "add_devices"
const string UI_BUTTON_NAME_ADD_UNSUPPORTED_DEVICE = "add_unsupported_device"
const string UI_BUTTON_NAME_ADD_ECOBEE = "add_ecobee"
const string UI_BUTTON_NAME_ADD_HONEYWELL = "add_honeywell"
const string UI_BUTTON_NAME_ADD_HONEYWELL_TC2 = "add_honeywell_tc2"
const string UI_BUTTON_NAME_ADD_HUNTER_DOUGLAS = "add_hunter_douglas"
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
const string UI_BUTTON_NAME_RELINK_ACCOUNT = "relink_account"
const string UI_BUTTON_NAME_CHANGE_INTEGRATION_OWNER = "change_integration_owner"
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
const string UI_BUTTON_NAME_MUSIC_WIDGET_GROUP = "music_widget:group"
const string UI_BUTTON_NAME_NEED_HELP = "need_help"
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
const string UI_BUTTON_NAME_UNMUTE = "unmute"
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
const string UI_BUTTON_NAME_CONTROL_MANUAL_UPDATE = "control_manual_update"
const string UI_BUTTON_NAME_ADD_HOME_LOCATION = "add_home_location"
const string UI_BUTTON_NAME_CHANGE_HOME_LOCATION = "change_home_location"
const string UI_BUTTON_NAME_DISPLAY_GENERAL_SETTINGS = "display_general_settings"
const string UI_BUTTON_NAME_UPDATE_NOW = "update_now"
const string UI_BUTTON_NAME_SETTIME = "settime"
const string UI_BUTTON_NAME_SUNRISE = "sunrise"
const string UI_BUTTON_NAME_SUNSET = "sunset"
const string UI_BUTTON_NAME_NEXT = "next"
const string UI_BUTTON_NAME_TRY_AGAIN = "try_again"
const string UI_BUTTON_NAME_SWITCH_PLAYERS = "switch_players"
const string UI_BUTTON_NAME_EDIT_GROUP = "edit_group"
const string UI_BUTTON_NAME_PLAY = "play"
const string UI_BUTTON_NAME_PAUSE = "pause"
const string UI_BUTTON_NAME_REPEAT_TOGGLE = "repeat:toggle"
const string UI_BUTTON_NAME_SHUFFLE_TOGGLE = "shuffle:toggle"
const string UI_BUTTON_NAME_PREVIOUS_TRACK = "previous_track"
const string UI_BUTTON_NAME_NEXT_TRACK = "next_track"
const string UI_BUTTON_NAME_PING_BRILLIANT = "ping_brilliant"
const string UI_BUTTON_NAME_VIEW_NEARBY_MESH_DEVICES = "view_nearby_mesh_devices"
const string UI_BUTTON_NAME_LOCK_MESH_DEVICE = "lock_mesh_device"
const string UI_BUTTON_NAME_AUTO_MESH_DEVICE = "auto_mesh_device"
const string UI_BUTTON_NAME_SLIDER_SETTINGS = "slider_settings"
const string UI_BUTTON_NAME_ASSIGN_TO_GESTURE = "assign_to_gesture"
const string UI_BUTTON_NAME_GET_SUPPORT = "get_support"
const string UI_BUTTON_NAME_MY_POSITION = "my_position"
const string UI_BUTTON_NAME_REVERSE_LOAD_ON = "reverse_load_on"
const string UI_BUTTON_NAME_REVERSE_LOAD_OFF = "reverse_load_off"
const string UI_BUTTON_NAME_MAGNETIC_OVERRIDE = "magnetic_override"
const string UI_BUTTON_NAME_MAGNETIC_DEFAULT = "magnetic_default"
const string UI_BUTTON_NAME_CONNECTION_TO_BASE_CALIBRATE = "connection_to_base_calibrate"
const string UI_BUTTON_NAME_DISABLE_SLIDERS_ON = "disable_sliders_on"
const string UI_BUTTON_NAME_DISABLE_SLIDERS_OFF = "disable_sliders_off"
const string UI_BUTTON_NAME_RESET_SLIDERS = "reset_sliders"
const string UI_BUTTON_NAME_SET_UP_HOMEKIT = "set_up_homekit"
const string UI_BUTTON_NAME_WAC_WHILE_HOMEKIT_PAIRED = "wac_while_homekit_paired"
const string UI_BUTTON_NAME_ALEXA_SKILL_CONFIRM_DISCOVERED = "confirm_discovered"
const string UI_BUTTON_NAME_LOCK = "lock"
const string UI_BUTTON_NAME_UNLOCK = "unlock"
const string UI_BUTTON_NAME_CHANGE_NETWORK = "change_network"
const string UI_BUTTON_NAME_PROCEED_ANYWAY = "proceed_anyway"
const string UI_BUTTON_NAME_ENABLE_REMOTE_ASSISTANCE = "enable_remote_assistance"
const string UI_BUTTON_NAME_SUPPORT_HOURS = "support_hours"
const string UI_BUTTON_NAME_WEATHER = "weather"
const string UI_BUTTON_NAME_THERMOSTAT = "thermostat"
const string UI_BUTTON_NAME_CLIMATE_WIDGET = "climate_widget"
const string UI_BUTTON_NAME_REFRESH = "refresh"
const string UI_BUTTON_NAME_ARMED_STATE_WIDGET_ARM_HOME = "armed_state_widget:arm_home"
const string UI_BUTTON_NAME_ARMED_STATE_WIDGET_ARM_AWAY = "armed_state_widget:arm_away"
const string UI_BUTTON_NAME_ARMED_STATE_WIDGET_ARM_HOME_BYPASS = "armed_state_widget:arm_home_bypass"
const string UI_BUTTON_NAME_ARMED_STATE_WIDGET_ARM_AWAY_BYPASS = "armed_state_widget:arm_away_bypass"
const string UI_BUTTON_NAME_RESTART = "restart"
const string UI_BUTTON_NAME_SHUTDOWN = "shutdown"
const string UI_BUTTON_NAME_CANCEL = "cancel"
const string UI_BUTTON_NAME_LEARN_MORE = "learn_more"
const string UI_BUTTON_NAME_SKIP_ACTION = "skip_action"
const string UI_BUTTON_NAME_FORGOT_PASSCODE = "forgot_passcode"
const string UI_BUTTON_NAME_RESEND_CODE = "resend_code"
const string UI_BUTTON_NAME_PREVIEW_RECENT = "preview:recent"
const string UI_BUTTON_NAME_PREVIEW_PRESET = "preview:preset"
const string UI_BUTTON_NAME_APPLY_RECENT = "apply:recent"
const string UI_BUTTON_NAME_APPLY_PRESET = "apply:preset"
const string UI_BUTTON_NAME_BYPASS = "bypass"
const string UI_BUTTON_NAME_ARM_HOME = "arm_home"
const string UI_BUTTON_NAME_DISARM = "disarm"
const string UI_BUTTON_NAME_UNLOCK_DISARM = "unlock_disarm"
const string UI_BUTTON_NAME_LOCK_ARM_HOME = "lock_arm_home"
const string UI_BUTTON_NAME_HOME_FUNCTION = "home_function"
const string UI_BUTTON_NAME_SCENE = "scene"
const string UI_BUTTON_NAME_DEVICE = "device"
const string UI_BUTTON_NAME_ROOM = "room"
const string UI_BUTTON_NAME_PRIVACY_SETTINGS = "privacy_settings"
const string UI_BUTTON_NAME_ADD_PARTNER_DEVICES = "add_partner_device"
const string UI_BUTTON_NAME_CREATE_GROUP = "create_group"
const string UI_BUTTON_NAME_UPDATE_GROUP = "update_group"
const string UI_BUTTON_NAME_DELETE_GROUP = "delete_group"
const string UI_BUTTON_NAME_VIEW_GROUP = "view_group"
const string UI_BUTTON_NAME_FINISH_FLOW = "finish_flow"
const string UI_BUTTON_NAME_ADD_TO_HOME = "add_to_home"
const string UI_BUTTON_NAME_REMOVE_CONFIRM = "remove_confirm"
const string UI_BUTTON_NAME_UPDATE_SCENE_ACTION = "update_scene_action"
const string UI_BUTTON_NAME_LIGHTS = "lights"
const string UI_BUTTON_NAME_ON_OFF_DEVICES = "on_off_devices"
const string UI_BUTTON_NAME_BRILLIANT_DISPLAYS = "brilliant_displays"
const string UI_BUTTON_NAME_SPEAKERS = "speakers"
const string UI_BUTTON_NAME_THERMOSTATS = "thermostats"
const string UI_BUTTON_NAME_SHADES = "shades"
const string UI_BUTTON_NAME_LOCKS = "locks"
const string UI_BUTTON_NAME_GARAGES = "garages"
const string UI_BUTTON_NAME_ACCESS_PANELS = "access_panels"
const string UI_BUTTON_NAME_SECURITY_SYSTEMS = "security_systems"
const string UI_BUTTON_NAME_BYPASS_AND_ARM = "bypass_and_arm"
const string UI_BUTTON_NAME_SENSOR_STATUS = "sensor_status"
const string UI_BUTTON_NAME_SIREN = "siren"
const string UI_BUTTON_NAME_ACTIVATE_SIREN = "activate_siren"
const string UI_BUTTON_NAME_STOP_SIREN = "stop_siren"
const string UI_BUTTON_NAME_SEE_DEVICE_GROUPS = "see_device_groups"
const string UI_BUTTON_NAME_DEVICE_SETTINGS = "device_settings"
const string UI_BUTTON_NAME_CELSIUS = "celsius"
const string UI_BUTTON_NAME_FAHRENHEIT = "fahrenheit"
const string UI_BUTTON_NAME_YES = "yes"
const string UI_BUTTON_NAME_NO = "no"
const string UI_BUTTON_NAME_ADD_ARLO = "add_arlo"
const string UI_BUTTON_NAME_ADD_LEVITON = "add_leviton"
const string UI_BUTTON_NAME_ADD_LUTRON = "add_lutron"

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
