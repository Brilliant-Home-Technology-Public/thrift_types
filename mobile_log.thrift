namespace py thrift_types.mobile_log
namespace java thrift_types.mobile_log

/*
 * IMPORTANT NOTE:
 * The structs below represent logs made on Mobile apps.
 * For each struct there should be at least one corresponding table name (usually per platform)
 * Avoid Optional fields, only use in cases of deprecation and
 * even then, only if absolutely necessary and the intent is to phase out the column.
 *
 */


// BEGIN MOBILE LOG TABLE NAMES
// KEEP ALPHABETIZED
const string MOBILE_DEVICE_TOGGLE_EVENT_TABLE_NAME = "mobile_device_toggle"
const string MOBILE_DEVICE_LEVEL_EVENT_TABLE_NAME = "mobile_device_level"
const string MOBILE_DEVICE_SELECT_EVENT_TABLE_NAME = "mobile_device_select"
const string MOBILE_ERROR_EVENT_TABLE_NAME = "mobile_error"
const string MOBILE_JOINED_HOME_EVENT_TABLE_NAME = "mobile_joined_home"
const string MOBILE_OVERLAY_BUTTON_TAPPED_EVENT_TABLE_NAME = "mobile_overlay_button_tapped"
const string MOBILE_OVERLAY_VIEW_EVENT_TABLE_NAME = "mobile_overlay_view"
const string MOBILE_PHOTOS_ACTION_EVENT_TABLE_NAME = "mobile_photos_action"
const string MOBILE_SCENE_EXECUTED_EVENT_TABLE_NAME = "mobile_scene_executed"
const string MOBILE_SCREEN_VIEW_EVENT_TABLE_NAME = "mobile_screen_view"
const string MOBILE_SECTION_EXPANSION_TOGGLE_EVENT_TABLE_NAME = "mobile_section_expansion_toggle"
const string MOBILE_SIMPLE_BUTTON_TAPPED_EVENT_TABLE_NAME = "mobile_simple_button_tapped"
const string MOBILE_UNLOCK_ATTEMPT_EVENT_TABLE_NAME = "mobile_unlock_attempt"
// END MOBILE LOG TABLE NAMES

// START: MOBILE BUTTON NAME CONSTANTS
// KEEP ALPHABETIZED
const string MOBILE_BUTTON_NAME_ACCOUNT_SETTINGS = "account_settings"
const string MOBILE_BUTTON_NAME_BEGIN = "begin"
const string MOBILE_BUTTON_NAME_CANCEL = "cancel"
const string MOBILE_BUTTON_NAME_CREATE_NEW_ACCOUNT = "create_new_account"
const string MOBILE_BUTTON_NAME_CONFIRM_DEMO_MODE = "confirm_demo_mode"
const string MOBILE_BUTTON_NAME_CONFIRM_FORGET_HOME = "confirm_forget_home"
const string MOBILE_BUTTON_NAME_CONFIRM_UPLOAD_PHOTO = "confirm_upload_photo"
const string MOBILE_BUTTON_NAME_DELETE_PHOTO = "delete_photo"
const string MOBILE_BUTTON_NAME_DEMO = "demo"
const string MOBILE_BUTTON_NAME_DEMO_MODE = "demo_mode"
const string MOBILE_BUTTON_NAME_EDIT = "edit"
const string MOBILE_BUTTON_NAME_EXISTING_ACCOUNT_CHOSEN = "existing_account_chosen"
const string MOBILE_BUTTON_NAME_EXIT_DEMO_MODE = "exit_demo_mode"
const string MOBILE_BUTTON_NAME_FINISH_SETUP = "finish_setup"
const string MOBILE_BUTTON_NAME_FORGOT_PIN = "forgot_pin"
const string MOBILE_BUTTON_NAME_FAQ = "faq"
const string MOBILE_BUTTON_NAME_FORGET_HOME = "forget_home"
const string MOBILE_BUTTON_NAME_GET_STARTED = "get_started"
const string MOBILE_BUTTON_NAME_GRANT_ALLOW = "grant_allow"
const string MOBILE_BUTTON_NAME_GRANT_CANCEL = "grant_cancel"
const string MOBILE_BUTTON_NAME_HELP = "help"
const string MOBILE_BUTTON_NAME_HOME_CHOSEN = "home_chosen"
const string MOBILE_BUTTON_NAME_LIVE_CHAT = "live_chat"
const string MOBILE_BUTTON_NAME_LOCK_APP = "lock_app"
const string MOBILE_BUTTON_NAME_NEXT = "next"
const string MOBILE_BUTTON_NAME_OK = "ok"
const string MOBILE_BUTTON_NAME_PAIR = "pair"
const string MOBILE_BUTTON_NAME_PHOTO_LIBRARY_HELP = "photo_library_help"
const string MOBILE_BUTTON_NAME_REPORT_ISSUE = "report_issue"
const string MOBILE_BUTTON_NAME_SAVE = "save"
const string MOBILE_BUTTON_NAME_SETTINGS = "settings"
const string MOBILE_BUTTON_NAME_TRY_AGAIN = "try_again"
const string MOBILE_BUTTON_NAME_UPLOAD_PHOTO_START = "upload_photo"
const string MOBILE_BUTTON_NAME_X = "x"
// END: MOBILE BUTTON NAME CONSTANTS


// Used for ScreenName and OverlayName Modifiers i.e. Screen EnterCode with modifier "Error" is "EnterCode:Error"
const string MOBILE_NAME_MODIFIER_SEPARATOR = ":"

// BEGIN NAME MODIFIERS
const string MOBILE_NAME_MODIFIER_ERROR = "Error"
const string MOBILE_NAME_MODIFIER_LOADING = "Loading"
const string MOBILE_NAME_MODIFIER_FAILURE = "Failure"
const string MOBILE_NAME_MODIFIER_SUCCESS = "Success"
const string MOBILE_NAME_MODIFIER_DISABLED = "Disabled"
// END NAME MODIFIERS

enum MobileErrorEventType {
  FAILED_AUTHENTICATION_CODE_ENTRY = 1
  FAILED_DEVICE_DISCOVERY = 2
  FAILED_SET_VARIABLE_REQUEST = 3
  ERRORED_WEBSOCKET_CONNECTION = 4
  REMOTE_BRIDGE_RESPONSE_FAILURE = 5
  FAILED_KNOCK = 6
}

enum MobileEventDeviceType {
  LIGHT = 1
  LOCK = 2
  CLIMATE = 3
  GENERIC_TOGGLE = 4
}

enum MobileEventSource {
  BUTTON = 1
  ROW = 2
  SLIDER = 3
  SWITCH = 4
  COUNTER = 5
  STEP_TOGGLE = 6
  SELECTION_MENU = 7
  DIALOG = 8
}

enum MobileLevelType {
  INTENSITY = 1
  VOLUME = 2
  TEMPERATURE = 3
  TEMPERATURE_RANGE_LOW = 4
  TEMPERATURE_RANGE_HIGH = 5
}

enum MobilePhotosAction {
  SELECT = 1
  SELECT_ALL = 2
  DESELECT = 3
  DESELECT_ALL = 4
  VIEW_LIBRARY = 5
  VIEW_PHOTO = 6
  CONFIRM_DELETE = 7
  DELETE_SUCCESS = 8
  DELETE_FAILURE = 9
}

enum MobilePhotosConfigType {
  CONTROL = 1
  SHARED = 2
  ALL = 3
}

enum MobileSelectType {
  HVAC_MODE = 1
  FAN_MODE = 2
}

enum MobileToggleType {
  ON = 1
  LOCK = 2
  GLOBAL_ON = 3
}

enum MobileUnlockResult {
  SUCCESS = 1
  FAILURE = 2
  LOCKED_OUT = 3
}

// END LOGGING ENUMS


// BEGIN LOGGING STRUCTS

struct MobileDeviceLevelEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: MobileEventDeviceType device_type
  8: MobileEventSource source
  9: MobileLevelType level_type
  10: i32 level
}

struct MobileDeviceSelectEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: MobileEventDeviceType device_type
  8: MobileEventSource source
  9: MobileSelectType select_type
  10: string value
}

struct MobileDeviceToggleEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: MobileEventDeviceType device_type
  8: MobileEventSource source
  9: MobileToggleType toggle_type
  10: bool on
  11: bool aggregate
}

struct MobileErrorEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: MobileErrorEventType event
  7: string reason
}

struct MobileJoinedHomeEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
}

// NOTE:DO NOT ADD ANY FIELDS TO MobileOverlayButtonTappedEvent
// If a ButtonTapped log needs another field, make a new struct
// ONLY USE CONSTANTS (add above) FOR button_name
struct MobileOverlayButtonTappedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string overlay_name
  8: string button_name
}

struct MobileOverlayViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string overlay_name
}

struct MobilePhotosActionEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: MobilePhotosAction photos_action
  8: MobilePhotosConfigType config_type
  9: string album_name
}


struct MobileSceneExecutedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
}

struct MobileScreenViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string source_screen
}

struct MobileSectionExpansionToggleEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  8: bool expanding
}

// NOTE:DO NOT ADD ANY FIELDS TO MobileSimpleButtonTappedEvent
// If a ButtonTapped log needs another field, make a new struct
// ONLY USE CONSTANTS (add above) FOR button_name
struct MobileSimpleButtonTappedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string button_name
}

struct MobileUnlockAttemptEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: MobileUnlockResult unlock_result
}

