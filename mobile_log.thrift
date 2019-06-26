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
const string MOBILE_INSTALLATION_STARTED_EVENT_TABLE_NAME = "mobile_installation_started"
const string MOBILE_INSTALLATION_ENDED_EVENT_TABLE_NAME = "mobile_installation_ended"
const string MOBILE_INSTALLATION_FEEDBACK_EVENT_TABLE_NAME = "mobile_installation_feedback"
const string MOBILE_JOINED_HOME_EVENT_TABLE_NAME = "mobile_joined_home"
const string MOBILE_LIVEVIEW_SESSION_REPORT_EVENT_TABLE_NAME = "mobile_liveview_session_report"
const string MOBILE_LIVEVIEW_SESSION_REPORT_DEBUG_EVENT_TABLE_NAME = "mobile_liveview_session_debug_report"
const string MOBILE_OFFLINE_EVENT_TABLE_NAME = "mobile_offline"
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
const string MOBILE_BUTTON_NAME_BRILLIANT_HELP = "brilliant_help"
const string MOBILE_BUTTON_NAME_BUY_BRILLIANT = "buy_brilliant"
const string MOBILE_BUTTON_NAME_CANCEL = "cancel"
const string MOBILE_BUTTON_NAME_CREATE_HOME = "create_home"
const string MOBILE_BUTTON_NAME_CREATE_NEW_HOME = "create_new_home"
const string MOBILE_BUTTON_NAME_CREATE_NEW_ACCOUNT = "create_new_account"
const string MOBILE_BUTTON_NAME_CREATE_ROOM = "create_room"
const string MOBILE_BUTTON_NAME_CONFIRM_DEMO_MODE = "confirm_demo_mode"
const string MOBILE_BUTTON_NAME_CONFIRM_FORGET_HOME = "confirm_forget_home"
const string MOBILE_BUTTON_NAME_CONFIRM_REMOVE_CONTROL = "confirm_remove_control"
const string MOBILE_BUTTON_NAME_CONFIRM_UPLOAD_PHOTO = "confirm_upload_photo"
const string MOBILE_BUTTON_NAME_CONTINUE = "continue"
const string MOBILE_BUTTON_NAME_DELETE_CONFIRM = "delete_confirm"
const string MOBILE_BUTTON_NAME_DELETE_PHOTO = "delete_photo"
const string MOBILE_BUTTON_NAME_DELETE_ROOM = "delete_room"
const string MOBILE_BUTTON_NAME_DEMO = "demo"
const string MOBILE_BUTTON_NAME_DEMO_MODE = "demo_mode"
const string MOBILE_BUTTON_NAME_EDIT = "edit"
const string MOBILE_BUTTON_NAME_ENTER_MY_HOME = "enter_my_home"
const string MOBILE_BUTTON_NAME_EXISTING_ACCOUNT_CHOSEN = "existing_account_chosen"
const string MOBILE_BUTTON_NAME_EXIT_DEMO_MODE = "exit_demo_mode"
const string MOBILE_BUTTON_NAME_FAQ = "faq"
const string MOBILE_BUTTON_NAME_FINISH_SETUP = "finish_setup"
const string MOBILE_BUTTON_NAME_FORGOT_PIN = "forgot_pin"
const string MOBILE_BUTTON_NAME_FORGET_HOME = "forget_home"
const string MOBILE_BUTTON_NAME_GET_STARTED = "get_started"
const string MOBILE_BUTTON_NAME_GO_TO_APP_STORE = "go_to_app_store"
const string MOBILE_BUTTON_NAME_GRANT_ALLOW = "grant_allow"
const string MOBILE_BUTTON_NAME_GRANT_CANCEL = "grant_cancel"
const string MOBILE_BUTTON_NAME_HAVE_BRILLIANT = "have_brilliant"
const string MOBILE_BUTTON_NAME_HELP = "help"
const string MOBILE_BUTTON_NAME_HOME_CHOSEN = "home_chosen"
const string MOBILE_BUTTON_NAME_HOME_MANAGEMENT = "home_management"
const string MOBILE_BUTTON_NAME_JOIN_ANOTHER_HOME = "join_another_home"
const string MOBILE_BUTTON_NAME_LIVE_CHAT = "live_chat"
const string MOBILE_BUTTON_NAME_LOCK_APP = "lock_app"
const string MOBILE_BUTTON_NAME_LOG_OUT = "log_out"
const string MOBILE_BUTTON_NAME_MORE = "more"
const string MOBILE_BUTTON_NAME_NO = "no"
const string MOBILE_BUTTON_NAME_NEXT = "next"
const string MOBILE_BUTTON_NAME_OK = "ok"
const string MOBILE_BUTTON_NAME_OPEN_SONOS = "open_sonos"
const string MOBILE_BUTTON_NAME_PHOTO_LIBRARY_HELP = "photo_library_help"
const string MOBILE_BUTTON_NAME_REMOVE_CONTROL = "remove_control"
const string MOBILE_BUTTON_NAME_REMOVE_THIRDPARTY_DEVICE = "remove_thirdparty_device"
const string MOBILE_BUTTON_NAME_RESET_SETTINGS = "reset_settings"
const string MOBILE_BUTTON_NAME_REPORT_ISSUE = "report_issue"
const string MOBILE_BUTTON_NAME_SAVE = "save"
const string MOBILE_BUTTON_NAME_SCENE_ACTION_ADD = "scene_action_add"
const string MOBILE_BUTTON_NAME_SCENE_ACTION_CREATE = "scene_action_create"
const string MOBILE_BUTTON_NAME_SCENE_ACTION_DELETE = "scene_action_delete"
const string MOBILE_BUTTON_NAME_SCENE_CREATE = "scene_create"
const string MOBILE_BUTTON_NAME_SCENE_DELETE = "scene_delete"
const string MOBILE_BUTTON_NAME_SCENE_TIMER_ADD = "scene_timer_add"
const string MOBILE_BUTTON_NAME_SCENE_TIMER_DELETE = "scene_timer_delete"
const string MOBILE_BUTTON_NAME_SCENE_TIMER_EDIT = "scene_timer_edit"
const string MOBILE_BUTTON_NAME_SCENES_EDIT_MODE = "scenes_edit_mode"
const string MOBILE_BUTTON_NAME_SCENES_EDIT_MODE_FINISH = "scenes_edit_mode_finish"
const string MOBILE_BUTTON_NAME_SET_UP = "set_up"
const string MOBILE_BUTTON_NAME_SETTINGS = "settings"
const string MOBILE_BUTTON_NAME_SHOW_ME_HOW = "show_me_how"
const string MOBILE_BUTTON_NAME_SKIP = "skip"
const string MOBILE_BUTTON_NAME_TRY_AGAIN = "try_again"
const string MOBILE_BUTTON_NAME_UPLOAD_PHOTO_START = "upload_photo"
const string MOBILE_BUTTON_NAME_WHERE_IS_MY_BRILLIANT = "where_is_my_brilliant"
const string MOBILE_BUTTON_NAME_X = "x"
const string MOBILE_BUTTON_NAME_YES = "yes"
// END: MOBILE BUTTON NAME CONSTANTS


// Used for ScreenName and OverlayName Modifiers i.e. Screen EnterCode with modifier "Error" is "EnterCode:Error"
const string MOBILE_NAME_MODIFIER_SEPARATOR = ":"

// BEGIN NAME MODIFIERS
const string MOBILE_NAME_MODIFIER_ERROR = "Error"
const string MOBILE_NAME_MODIFIER_LOADING = "Loading"
const string MOBILE_NAME_MODIFIER_FAILURE = "Failure"
const string MOBILE_NAME_MODIFIER_SUCCESS = "Success"
const string MOBILE_NAME_MODIFIER_DISABLED = "Disabled"
const string MOBILE_NAME_MODIFIER_NEW = "New"
const string MOBILE_NAME_MODIFIER_NO_CONTROLS = "NoControls"
const string MOBILE_NAME_MODIFIER_NO_SCENES = "NoScenes"
const string MOBILE_NAME_MODIFIER_ADD_HOME = "AddHome"
const string MOBILE_NAME_MODIFIER_PAIR = "Pair"
const string MOBILE_NAME_MODIFIER_SCENE_ACTION = "SceneAction"
const string MOBILE_NAME_MODIFIER_UPDATE_NAME = "UpdateName"
// END NAME MODIFIERS

// BEGIN MOBILE ERROR SHORT REASON CONSTANTS
const string MOBILE_ERROR_REASON_STATUS_CODE = "Error status code"
const string MOBILE_ERROR_REASON_INVALID_HEADERS = "Invalid headers"
const string MOBILE_ERROR_REASON_INVALID_RESPONSE = "Invalid response"
const string MOBILE_ERROR_REASON_WEB_API = "WebAPI error"
const string MOBILE_ERROR_REASON_STATE_MANAGER_CACHE_LOAD_ERROR = "State Manager Cache Load Error"
const string MOBILE_ERROR_REASON_STATE_MANAGER_CACHE_SAVE_ERROR = "State Manager Cache Save Error"
const string MOBILE_ERROR_REASON_STATE_MANAGER_CACHE_CLEAR_ERROR = "State Manager Cache Clear Error"
// END MOBILE ERROR SHORT REASON CONSTANTS

enum MobileErrorEventType {
  FAILED_AUTHENTICATION_CODE_ENTRY = 1
  FAILED_DEVICE_DISCOVERY = 2
  FAILED_SET_VARIABLE_REQUEST = 3
  ERRORED_WEBSOCKET_CONNECTION = 4
  REMOTE_BRIDGE_RESPONSE_FAILURE = 5
  FAILED_KNOCK = 6
  FAILED_PAIRING_ENTER_EMAIL = 7
  FAILED_PAIRING_ENTER_CODE = 8
  FAILED_PAIRING_CHOOSE_HOME = 9
  FAILED_ZENDESK_AUTHENTICATION = 10
  STATE_MANAGER_CACHE_ERROR = 11
  FAILED_PAIRING_CREATE_HOME = 12
  UPLOAD_PHOTO_ERROR = 13
  FAILED_GET_ICE_SERVERS = 14
}

enum MobileEventDeviceType {
  LIGHT = 1
  LOCK = 2
  CLIMATE = 3
  GENERIC_TOGGLE = 4
  MUSIC = 5
  SHADE = 6
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
  POSITION = 6
}

enum MobileOfflineStatus {
  OFFLINE = 1
  PARTIAL = 2
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
  11: string user_id
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
  11: string user_id
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
  12: string user_id
}

struct MobileErrorEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: MobileErrorEventType event
  7: string reason // May contain specific information (timestamps, deviceIds, etc)
  9: string short_reason // Should be an aggregatable string (no timestamps, device ids, etc)
  10: string user_id
}

struct MobileInstallationEndedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string sku
  9: string guide_version
  10: string exit_section
}

struct MobileInstallationFeedbackEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string sku
  8: string guide_version
  9: bool success
  10: string helpfulness
  11: string additional_help
  12: string free_response // TO BE EVENTUALLY DEPRECATED
}

struct MobileInstallationStartedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string sku
  8: string guide_version
}

struct MobileJoinedHomeEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
}

struct MobileOfflineEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: MobileOfflineStatus offline_status
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
  9: string user_id
}

struct MobileOverlayViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string overlay_name
  8: string user_id
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
  10: string user_id
}


struct MobileSceneExecutedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
}

struct MobileScreenViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string source_screen
  8: string user_id
}

struct MobileSectionExpansionToggleEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  8: bool expanding
  7: string user_id
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
  8: string user_id
}

struct MobileUnlockAttemptEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: MobileUnlockResult unlock_result
  8: string user_id
}

struct MobileLiveviewSessionReportEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string network_type
  8: string session_id
  9: string farthest_state
  10: string termination_reason
  11: i64 session_time_elapsed_seconds
  12: bool local_connection
}

struct MobileLiveviewSessionReportDebugEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string network_type
  8: string session_id
  9: string farthest_state
  10: string termination_reason
  11: i64 session_time_elapsed_seconds
  12: bool local_connection
  13: string wifi_ssid
  14: string ice_candidates
}
