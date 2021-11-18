namespace py thrift_types.mobile_log
namespace java thrift_types.mobile_log

include "mobile_installation_guide.thrift"
include "installation_template.thrift"
include "cross_platform_log.thrift"

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
const string MOBILE_BLE_PROVISIONING_EVENT_TABLE_NAME = "mobile_ble_provisioning"
const string MOBILE_CONNECTIVITY_EVENT_TABLE_NAME = "mobile_connectivity"
const string MOBILE_CONTROL_CONFIGURATION_EVENT_TABLE_NAME = "mobile_control_configuration"
const string MOBILE_CUSTOM_URL_LAUNCH_EVENT_TABLE_NAME = "mobile_custom_url_launch"
const string MOBILE_DEVICE_TOGGLE_EVENT_TABLE_NAME = "mobile_device_toggle"
const string MOBILE_DEVICE_LEVEL_EVENT_TABLE_NAME = "mobile_device_level"
const string MOBILE_DEVICE_NOTIFICATION_BUTTON_TAPPED = "mobile_device_notification_button_tapped"
const string MOBILE_DEVICE_NOTIFICATION_VIEW = "mobile_device_notification_view"
const string MOBILE_DEVICE_SELECT_EVENT_TABLE_NAME = "mobile_device_select"
const string MOBILE_DEVICE_SETTINGS_BUTTON_TAPPED_EVENT_TABLE_NAME = "mobile_device_settings_button_tapped"
const string MOBILE_DEVICE_SETTINGS_SCREEN_VIEW_EVENT_TABLE_NAME = "mobile_device_settings_screen_view"
const string MOBILE_ERROR_EVENT_TABLE_NAME = "mobile_error"
const string MOBILE_HOME_PASSCODE_ATTEMPT_TABLE_NAME = "mobile_home_passcode_attempt"
const string MOBILE_IMPORT_PARTNER_SCENE_EVENT_TABLE_NAME = "mobile_import_partner_scene"
const string MOBILE_INSTALLATION_CONFIG_CHANGED_EVENT_TABLE_NAME = "mobile_installation_config_changed"
const string MOBILE_INSTALLATION_ENDED_EVENT_TABLE_NAME = "mobile_installation_ended"
const string MOBILE_INSTALLATION_FEEDBACK_EVENT_TABLE_NAME = "mobile_installation_feedback"
const string MOBILE_INSTALLATION_GROUP_DEVICE_ENDED_EVENT_TABLE_NAME = "mobile_installation_group_device_ended"
const string MOBILE_INSTALLATION_GROUP_DEVICE_STARTED_EVENT_TABLE_NAME = "mobile_installation_group_device_started"
const string MOBILE_INSTALLATION_GROUP_FEEDBACK_EVENT_TABLE_NAME = "mobile_installation_group_feedback"
const string MOBILE_INSTALLATION_STARTED_EVENT_TABLE_NAME = "mobile_installation_started"
const string MOBILE_JOINED_HOME_EVENT_TABLE_NAME = "mobile_joined_home"
const string MOBILE_LIVEVIEW_SESSION_FEEDBACK_EVENT_TABLE_NAME = "mobile_liveview_session_feedback"
const string MOBILE_LIVEVIEW_SESSION_REPORT_EVENT_TABLE_NAME = "mobile_liveview_session_report"
const string MOBILE_LIVEVIEW_USAGE_REPORT_EVENT_TABLE_NAME = "mobile_liveview_usage_report"
const string MOBILE_MESH_NETWORK_EVENT_TABLE_NAME = "mobile_mesh_network_event"
const string MOBILE_OFFLINE_EVENT_TABLE_NAME = "mobile_offline"
const string MOBILE_OVERLAY_BUTTON_TAPPED_EVENT_TABLE_NAME = "mobile_overlay_button_tapped"
const string MOBILE_OVERLAY_VIEW_EVENT_TABLE_NAME = "mobile_overlay_view"
const string MOBILE_PHOTOS_ACTION_EVENT_TABLE_NAME = "mobile_photos_action"
const string MOBILE_PROVISIONING_CANCEL_EVENT_TABLE_NAME = "mobile_provisioning_cancel"
const string MOBILE_SCENE_EXECUTED_EVENT_TABLE_NAME = "mobile_scene_executed"
const string MOBILE_SCREEN_VIEW_EVENT_TABLE_NAME = "mobile_screen_view"
const string MOBILE_SECTION_EXPANSION_TOGGLE_EVENT_TABLE_NAME = "mobile_section_expansion_toggle"
const string MOBILE_SECURITY_SYSTEM_ADJUSTMENT_ATTEMPT_EVENT_TABLE_NAME = "mobile_security_system_adjustment_attempt"
const string MOBILE_SIMPLE_BUTTON_TAPPED_EVENT_TABLE_NAME = "mobile_simple_button_tapped"
const string MOBILE_THIRDPARTY_BUTTON_TAPPED_EVENT_TABLE_NAME = "mobile_thirdparty_button_tapped"
const string MOBILE_THIRDPARTY_DEVICE_ADDED_EVENT_TABLE_NAME = "mobile_thirdparty_device_added"
const string MOBILE_THIRDPARTY_OVERLAY_VIEW_EVENT_TABLE_NAME = "mobile_thirdparty_overlay_view"
const string MOBILE_THIRDPARTY_REQUEST_EVENT_TABLE_NAME = "mobile_thirdparty_request"
const string MOBILE_THIRDPARTY_SCREEN_VIEW_EVENT_TABLE_NAME = "mobile_thirdparty_screen_view"
const string MOBILE_UNLOCK_ATTEMPT_EVENT_TABLE_NAME = "mobile_unlock_attempt"
const string MOBILE_LIVEVIEW_SUPPORT_EVENT_TABLE_NAME = "mobile_liveview_support"
const string MOBILE_INSTALL_DEVICE_ADDED_TO_GUIDE_EVENT_TABLE_NAME = "mobile_install_device_added_to_guide"
const string MOBILE_INSTALL_LOAD_ADDED_TO_GUIDE_EVENT_TABLE_NAME = "mobile_install_load_added_to_guide"
const string MOBILE_INSTALL_SWITCH_CONNECT_EVENT_TABLE_NAME = "mobile_install_switch_connect"
// END MOBILE LOG TABLE NAMES

// START: MOBILE BUTTON NAME CONSTANTS
// KEEP ALPHABETIZED
const string MOBILE_BUTTON_NAME_ACCOUNT_SETTINGS = "account_settings"
const string MOBILE_BUTTON_NAME_ADD_DEVICE = "add_device"
const string MOBILE_BUTTON_NAME_ADD_LOCATION = "add_location"
const string MOBILE_BUTTON_NAME_ADD_TO_HOME = "add_to_home"
const string MOBILE_BUTTON_NAME_APPLY = "apply"
const string MOBILE_BUTTON_NAME_AUTO = "auto"
const string MOBILE_BUTTON_NAME_BACK = "back"
const string MOBILE_BUTTON_NAME_BACK_TO_INSTALL = "back_to_install"
const string MOBILE_BUTTON_NAME_BEGIN = "begin"
const string MOBILE_BUTTON_NAME_BIO_ID_DISABLE = "disable_bio_id"
const string MOBILE_BUTTON_NAME_BIO_ID_ENABLE = "enable_bio_id"
const string MOBILE_BUTTON_NAME_BLINKING = "blinking"
const string MOBILE_BUTTON_NAME_BRILLIANT_CONTROLS = "brilliant_controls"
const string MOBILE_BUTTON_NAME_BRILLIANT_HELP = "brilliant_help"
const string MOBILE_BUTTON_NAME_BUY_BRILLIANT = "buy_brilliant"
const string MOBILE_BUTTON_NAME_CALL_SUPPORT = "call_support"
const string MOBILE_BUTTON_NAME_CANCEL = "cancel"
const string MOBILE_BUTTON_NAME_CHANGE_HOME_PASSCODE = "change_home_passcode"
const string MOBILE_BUTTON_NAME_CHANGE_LOCATION = "change_location"
const string MOBILE_BUTTON_NAME_CHANGE_MESH_OWNER = "change_mesh_owner"
const string MOBILE_BUTTON_NAME_CHANGE_PERMISSIONS = "change_permissions"
const string MOBILE_BUTTON_NAME_CHANGE_PIN = "change_pin"
const string MOBILE_BUTTON_NAME_CHANGE_TIME_ZONE = "change_time_zone"
const string MOBILE_BUTTON_NAME_CLOSE = "close"
const string MOBILE_BUTTON_NAME_CONFIRM = "confirm"
const string MOBILE_BUTTON_NAME_CONFIRM_DEMO_MODE = "confirm_demo_mode"
const string MOBILE_BUTTON_NAME_CONFIRM_FORGET_HOME = "confirm_forget_home"
const string MOBILE_BUTTON_NAME_CONFIRM_UPLOAD_PHOTO = "confirm_upload_photo"
const string MOBILE_BUTTON_NAME_CONNECT_TO_BRILLIANT_HOME = "connect_to_brilliant_home"
const string MOBILE_BUTTON_NAME_CONNECTIVITY = "connectivity"
const string MOBILE_BUTTON_NAME_CONTACT_CUSTOMER_SUPPORT = "contact_customer_support"
const string MOBILE_BUTTON_NAME_CONTINUE = "continue"
const string MOBILE_BUTTON_NAME_CONTINUE_FREE_PAIRING = "continue:free_pairing"
const string MOBILE_BUTTON_NAME_CONTINUE_OWN = "continue_own"
const string MOBILE_BUTTON_NAME_CONTINUE_WITHOUT_CODE = "continue_without_code"
const string MOBILE_BUTTON_NAME_CREATE_CUSTOM = "create_custom"
const string MOBILE_BUTTON_NAME_CREATE_HOME = "create_home"
const string MOBILE_BUTTON_NAME_CREATE_NEW_HOME = "create_new_home"
const string MOBILE_BUTTON_NAME_CREATE_NEW_ACCOUNT = "create_new_account"
const string MOBILE_BUTTON_NAME_CREATE_ROOM = "create_room"
const string MOBILE_BUTTON_NAME_DELETE = "delete"
const string MOBILE_BUTTON_NAME_DELETE_CONFIRM = "delete_confirm"
const string MOBILE_BUTTON_NAME_DELETE_HOME = "delete_home"
const string MOBILE_BUTTON_NAME_DELETE_PHOTO = "delete_photo"
const string MOBILE_BUTTON_NAME_DELETE_PROFILE = "delete_profile"
const string MOBILE_BUTTON_NAME_DELETE_ROOM = "delete_room"
const string MOBILE_BUTTON_NAME_DEMO = "demo"
const string MOBILE_BUTTON_NAME_DEMO_MODE = "demo_mode"
const string MOBILE_BUTTON_NAME_DIMMING = "dimming"
const string MOBILE_BUTTON_NAME_DISMISS = "dismiss"
const string MOBILE_BUTTON_NAME_DISPLAY_SETTINGS = "display_settings"
const string MOBILE_BUTTON_NAME_DONT_SEE_DEVICES = "dont_see_devices"
const string MOBILE_BUTTON_NAME_EDIT = "edit"
const string MOBILE_BUTTON_NAME_EDIT_FIXTURE = "edit_fixture"
const string MOBILE_BUTTON_NAME_ENTER_MY_HOME = "enter_my_home"
const string MOBILE_BUTTON_NAME_EXISTING_ACCOUNT_CHOSEN = "existing_account_chosen"
const string MOBILE_BUTTON_NAME_EXIT = "exit"
const string MOBILE_BUTTON_NAME_EXIT_DEMO_MODE = "exit_demo_mode"
const string MOBILE_BUTTON_NAME_FAQ = "faq"
const string MOBILE_BUTTON_NAME_FINISH_SETUP = "finish_setup"
const string MOBILE_BUTTON_NAME_FLIP = "flip"
const string MOBILE_BUTTON_NAME_FORGOT_PIN = "forgot_pin"
const string MOBILE_BUTTON_NAME_FORGOT_PASSCODE = "forgot_passcode"
const string MOBILE_BUTTON_NAME_FORGET_HOME = "forget_home"
const string MOBILE_BUTTON_NAME_GEAR = "gear"
const string MOBILE_BUTTON_NAME_GESTURE_SETTINGS = "gesture_settings"
const string MOBILE_BUTTON_NAME_GET_STARTED = "get_started"
const string MOBILE_BUTTON_NAME_GIVE_FEEDBACK = "give_feedback"
const string MOBILE_BUTTON_NAME_GO_TO_APP_STORE = "go_to_app_store"
const string MOBILE_BUTTON_NAME_GO_TO_INSTALL = "go_to_install"
const string MOBILE_BUTTON_NAME_GRANT_ALLOW = "grant_allow"
const string MOBILE_BUTTON_NAME_GRANT_CANCEL = "grant_cancel"
const string MOBILE_BUTTON_NAME_GRAY_X = "gray_x"
const string MOBILE_BUTTON_NAME_HAVE_BRILLIANT = "have_brilliant"
const string MOBILE_BUTTON_NAME_HAVING_TROUBLE = "having_trouble"
const string MOBILE_BUTTON_NAME_HELP = "help"
const string MOBILE_BUTTON_NAME_HELP_FAILED_COMPATIBILITY = "help_failed_compatibility"
const string MOBILE_BUTTON_NAME_HELP_FIND_CODE = "help_find_code"
const string MOBILE_BUTTON_NAME_HELP_HIGH_WATTAGE = "help_high_wattage"
const string MOBILE_BUTTON_NAME_HIDE_DEVICE = "hide"
const string MOBILE_BUTTON_NAME_HOME_CHOSEN = "home_chosen"
const string MOBILE_BUTTON_NAME_HOME_PASSCODE_DISABLE = "disable_passcode"
const string MOBILE_BUTTON_NAME_HOME_PASSCODE_ENABLE = "enable_passcode"
const string MOBILE_BUTTON_NAME_HOME_SETTINGS = "home_settings"
const string MOBILE_BUTTON_NAME_INSTALL = "install"
const string MOBILE_BUTTON_NAME_INSTALL_BRILLIANT = "install_brilliant"
const string MOBILE_BUTTON_NAME_JOIN_ANOTHER_HOME = "join_another_home"
const string MOBILE_BUTTON_NAME_LEARN_MORE = "learn_more"
const string MOBILE_BUTTON_NAME_LED_PREFERENCES = "led_preferences"
const string MOBILE_BUTTON_NAME_LIGHT_NOT_DIMMABLE = "light_not_dimmable"
const string MOBILE_BUTTON_NAME_LIVE_CHAT = "live_chat"
const string MOBILE_BUTTON_NAME_LIVE_VIEW = "live_view"
const string MOBILE_BUTTON_NAME_LOCATION_SHARE = "location_share"
const string MOBILE_BUTTON_NAME_LOCK = "lock"
const string MOBILE_BUTTON_NAME_LOCK_APP = "lock_app"
const string MOBILE_BUTTON_NAME_LOG_IN = "log_in"
const string MOBILE_BUTTON_NAME_LOG_IN_AS_AN_OPERATOR = "log_in_as_an_operator"
const string MOBILE_BUTTON_NAME_LOG_OUT = "log_out"
const string MOBILE_BUTTON_NAME_MARK_COMPLETED = "mark_completed"
const string MOBILE_BUTTON_NAME_MORE = "more"
const string MOBILE_BUTTON_NAME_MOTION_SETTINGS = "motion_settings"
const string MOBILE_BUTTON_NAME_MULTIGANG_CONTROL_DEVICE_INFO = "multigang_control_device_info"
const string MOBILE_BUTTON_NAME_MUTE = "mute"
const string MOBILE_BUTTON_NAME_MY_LIGHTS_WONT_TURN_ON = "my_lights_won_turn_on"
const string MOBILE_BUTTON_NAME_NEED_HELP = "need_help"
const string MOBILE_BUTTON_NAME_NEXT = "next"
const string MOBILE_BUTTON_NAME_NO = "no"
const string MOBILE_BUTTON_NAME_NO_GROUND_WIRE = "no_ground_wire"
const string MOBILE_BUTTON_NAME_NO_NEUTRAL_WIRE = "no_neutral_wire"
const string MOBILE_BUTTON_NAME_NO_QR_CODE = "no_qr_code"
const string MOBILE_BUTTON_NAME_NO_TOOL = "no_tool"
const string MOBILE_BUTTON_NAME_OCCUPIED_UNIT = "occupied_unit"
const string MOBILE_BUTTON_NAME_OFFLINE_HELP = "offline_help"
const string MOBILE_BUTTON_NAME_OK = "ok"
const string MOBILE_BUTTON_NAME_OPEN_SONOS = "open_sonos"
const string MOBILE_BUTTON_NAME_OTHER = "other"
const string MOBILE_BUTTON_NAME_OTHER_RECOMMENDATIONS_CONNECTIVITY = "other_recommendations_connectivity"
const string MOBILE_BUTTON_NAME_OTHER_RECOMMENDATIONS_DIMMING = "other_recommendations_dimming"
const string MOBILE_BUTTON_NAME_PHOTO_LIBRARY_HELP = "photo_library_help"
const string MOBILE_BUTTON_NAME_PLAY_LINE_IN = "line_in_play"
const string MOBILE_BUTTON_NAME_PLAY_LINE_IN_TV = "line_in_tv_play"
const string MOBILE_BUTTON_NAME_POWER_CYCLE = "power_cycle"
const string MOBILE_BUTTON_NAME_PROCEED = "proceed"
const string MOBILE_BUTTON_NAME_PROVISION_BACK = "provision_back"
const string MOBILE_BUTTON_NAME_READY = "ready"
const string MOBILE_BUTTON_NAME_REFRESH_TEMPLATE = "refresh_template"
const string MOBILE_BUTTON_NAME_REMOTE_VIDEO_DISABLE = "disable_remote_video"
const string MOBILE_BUTTON_NAME_REMOTE_VIDEO_ENABLE = "enable_remote_video"
const string MOBILE_BUTTON_NAME_REPEAT = "repeat"
const string MOBILE_BUTTON_NAME_RESET_DEVICE = "reset_device"
const string MOBILE_BUTTON_NAME_RETRY = "retry"
const string MOBILE_BUTTON_NAME_REMOVE_BRILLIANT_CONTROL_DEVICE = "remove_brilliant_control"
const string MOBILE_BUTTON_NAME_REMOVE_BRILLIANT_MESH_DEVICE = "remove_brilliant_mesh_device"
const string MOBILE_BUTTON_NAME_REMOVE_MOBILE = "remove_mobile"
const string MOBILE_BUTTON_NAME_REMOVE_THIRDPARTY_DEVICE = "remove_thirdparty_device"
const string MOBILE_BUTTON_NAME_REPORT_ISSUE = "report_issue"
const string MOBILE_BUTTON_NAME_RESET_SETTINGS = "reset_settings"
const string MOBILE_BUTTON_NAME_RESTART_CONTROL = "restart_control"
const string MOBILE_BUTTON_NAME_RETURN_TO_WIRING = "return_to_wiring"
const string MOBILE_BUTTON_NAME_SAVE = "save"
const string MOBILE_BUTTON_NAME_SCAN_DIFFERENT_QR = "scan_different_qr"
const string MOBILE_BUTTON_NAME_SCENE_ACTION_ADD = "scene_action_add"
const string MOBILE_BUTTON_NAME_SCENE_ACTION_CREATE = "scene_action_create"
const string MOBILE_BUTTON_NAME_SCENE_ACTION_DELETE = "scene_action_delete"
const string MOBILE_BUTTON_NAME_SCENE_ADD_PARTNER_SCENE = "add_partner_scene"
const string MOBILE_BUTTON_NAME_SCENE_CREATE = "scene_create"
const string MOBILE_BUTTON_NAME_SCENE_CREATE_ADD_ACTION = "scene_create_add_action"
const string MOBILE_BUTTON_NAME_SCENE_CREATE_COPY = "copy_scene"
const string MOBILE_BUTTON_NAME_SCENE_DELETE = "scene_delete"
const string MOBILE_BUTTON_NAME_SCENE_EDIT = "edit_scene"
const string MOBILE_BUTTON_NAME_SCENE_SELECT = "select_scene"
const string MOBILE_BUTTON_NAME_SCENE_TIMER_ADD = "scene_timer_add"
const string MOBILE_BUTTON_NAME_SCENE_TIMER_DELETE = "scene_timer_delete"
const string MOBILE_BUTTON_NAME_SCENE_TIMER_EDIT = "scene_timer_edit"
const string MOBILE_BUTTON_NAME_SCENES_EDIT_MODE = "scenes_edit_mode"
const string MOBILE_BUTTON_NAME_SCENES_EDIT_MODE_FINISH = "scenes_edit_mode_finish"
const string MOBILE_BUTTON_NAME_SEARCH_AGAIN = "search_again"
const string MOBILE_BUTTON_NAME_SELECT_ANOTHER_DEVICE = "select_another_device"
const string MOBILE_BUTTON_NAME_SELECT_PLUG = "select_plug"
const string MOBILE_BUTTON_NAME_SELECT_SWITCH = "select_switch"
const string MOBILE_BUTTON_NAME_SELECT_DEVICE = "select_device"
const string MOBILE_BUTTON_NAME_SET_TIME = "set_time"
const string MOBILE_BUTTON_NAME_SET_UP = "set_up"
const string MOBILE_BUTTON_NAME_SET_UP_CONTROL = "set_up_control"
const string MOBILE_BUTTON_NAME_SET_UP_LATER = "set_up_later"
const string MOBILE_BUTTON_NAME_SETTINGS = "settings"
const string MOBILE_BUTTON_NAME_SHOW_ME_HOW = "show_me_how"
const string MOBILE_BUTTON_NAME_SHUFFLE = "shuffle"
const string MOBILE_BUTTON_NAME_SKIP = "skip"
const string MOBILE_BUTTON_NAME_SKIP_ZIP_CODE = "skip_zip_code"
const string MOBILE_BUTTON_NAME_SLIDER_SETTINGS = "slider_settings"
const string MOBILE_BUTTON_NAME_SOLID = "solid"
const string MOBILE_BUTTON_NAME_SUNRISE = "sunrise"
const string MOBILE_BUTTON_NAME_SUNSET = "sunset"
const string MOBILE_BUTTON_NAME_SWITCH_HOME = "switch_home"
const string MOBILE_BUTTON_NAME_TOGGLE = "toggle"
const string MOBILE_BUTTON_NAME_TROUBLESHOOT = "troubleshoot"
const string MOBILE_BUTTON_NAME_TRY_AGAIN = "try_again"
const string MOBILE_BUTTON_NAME_UNASSIGN_FIXTURE = "unassign_fixture"
const string MOBILE_BUTTON_NAME_UNMUTE = "unmute"
const string MOBILE_BUTTON_NAME_UPLOAD_PHOTO_START = "upload_photo"
const string MOBILE_BUTTON_NAME_VACANT_UNIT = "vacant_unit"
const string MOBILE_BUTTON_NAME_VIEW_ARTICLE = "view_article"
const string MOBILE_BUTTON_NAME_VIEW_HOMES = "view_homes"
const string MOBILE_BUTTON_NAME_VIEW_PRIVACY_SETTINGS = "view_privacy_settings"
const string MOBILE_BUTTON_NAME_WHERE_IS_MY_BRILLIANT = "where_is_my_brilliant"
const string MOBILE_BUTTON_NAME_WIRED_TO = "wired_to"
const string MOBILE_BUTTON_NAME_WORKS_WITH = "works_with"
const string MOBILE_BUTTON_NAME_X = "x"
const string MOBILE_BUTTON_NAME_YES = "yes"
const string MOBILE_BUTTON_NAME_YES_CONTINUE = "yes_continue"
// END: MOBILE BUTTON NAME CONSTANTS


// Used for ScreenName and OverlayName Modifiers i.e. Screen EnterCode with modifier "Error" is "EnterCode:Error"
const string MOBILE_NAME_MODIFIER_SEPARATOR = ":"

// BEGIN NAME MODIFIERS
const string MOBILE_NAME_MODIFIER_ADD_HOME = "AddHome"
const string MOBILE_NAME_MODIFIER_CONFIRM = "Confirm"
const string MOBILE_NAME_MODIFIER_CONFIRM_NEW_PIN = "ConfirmNewPin"
const string MOBILE_NAME_MODIFIER_CONTROL = "Control"
const string MOBILE_NAME_MODIFIER_CREATE_NEW_PIN = "CreateNewPin"
const string MOBILE_NAME_MODIFIER_DELETE_HOME = "DeleteHome"
const string MOBILE_NAME_MODIFIER_DISABLED = "Disabled"
const string MOBILE_NAME_MODIFIER_ENTER_CURRENT_PIN = "EnterCurrentPin"
const string MOBILE_NAME_MODIFIER_ERROR = "Error"
const string MOBILE_NAME_MODIFIER_FAILURE = "Failure"
const string MOBILE_NAME_MODIFIER_IN_USE = "InUse"
const string MOBILE_NAME_MODIFIER_INSTALLATION_GUIDE = "InstallationGuide"
const string MOBILE_NAME_MODIFIER_INSTALLATION_COMPLETE = "InstallationComplete"
const string MOBILE_NAME_MODIFIER_LIGHT_ON_OFF_CHECK = "LightOnOffCheck"
const string MOBILE_NAME_MODIFIER_LOADING = "Loading"
const string MOBILE_NAME_MODIFIER_LOG_IN_OPERATOR = "LogInOperator"
const string MOBILE_NAME_MODIFIER_LOW_WATTAGE = "LowWattage"
const string MOBILE_NAME_MODIFIER_NEW = "New"
const string MOBILE_NAME_MODIFIER_NO_CONTROLS = "NoControls"
const string MOBILE_NAME_MODIFIER_NO_SCENES = "NoScenes"
const string MOBILE_NAME_MODIFIER_OVERLAY = "Overlay"
const string MOBILE_NAME_MODIFIER_PAIR = "Pair"
const string MOBILE_NAME_MODIFIER_PARTIAL = "Partial"
const string MOBILE_NAME_MODIFIER_PLUG = "Plug"
const string MOBILE_NAME_MODIFIER_RESET = "Reset"
const string MOBILE_NAME_MODIFIER_RESIDEO_PIN = "ResideoPin"
const string MOBILE_NAME_MODIFIER_SCENE_ACTION = "SceneAction"
const string MOBILE_NAME_MODIFIER_SIZE_ONE_GANG = "1G"
const string MOBILE_NAME_MODIFIER_SIZE_TWO_GANG = "2G"
const string MOBILE_NAME_MODIFIER_SIZE_THREE_GANG = "3G"
const string MOBILE_NAME_MODIFIER_SIZE_FOUR_GANG = "4G"
const string MOBILE_NAME_MODIFIER_SUCCESS = "Success"
const string MOBILE_NAME_MODIFIER_SWITCH = "Switch"
const string MOBILE_NAME_MODIFIER_TEMPLATE_LOAD_FAILED = "TemplateLoadFailed"
const string MOBILE_NAME_MODIFIER_TEMPLATE_MISMATCH = "TemplateMismatch"
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
const string MOBILE_ERROR_REASON_CONTROL_ENDED = "ControlEnded"
const string MOBILE_ERROR_REASON_NETWORK_CONNECTIVITY = "NetworkConnectivity"
// END MOBILE ERROR SHORT REASON CONSTANTS

// BEGIN MOBILE INTEGRATION NAME CONSTANTS
// All integration names aside from brilliant are simply the virtual device id constants
const string MOBILE_INTEGRATION_NAME_BRILLIANT = "brilliant"
const string MOBILE_INTEGRATION_NAME_AGGREGATE = "aggregate"
// END MOBILE INTEGRATION NAME CONSTANTS

const i16 MOBILE_INVALID_OWNER_RSSI = -128

enum MobileUserType {
  CONSUMER = 1
  MULTIFAMILY = 2
  DEMO = 3
}

enum MobileAddDeviceFlowType {
  WORKS_WITH = 1
  DEVICE_LIST = 2
}

enum MobileBLEDeviceType {
  BRILLIANT_SWITCH = 1
  BRILLIANT_PLUG = 2
}

enum MobileBLEProvisioningEventStatus {
  SUCCESS = 1 // Only recorded when successfully added to brilliant message bus
  ERROR_PROVISIONING = 2 // Returned when an error in the BLE Provisioning occurs
  ERROR_CONFIGURATION = 3 // Returned when an error during vendor message exchanges occurs
  ERROR_MESSAGE_BUS = 4 // Returned when an error in message bus setup occurs
  ERROR_BLUETOOTH = 5 // Returned when an error accessing bluetooth occurs
}

enum MobileControlConfigurationEventStatus {
  SUCCESS = 1 // Only recorded when device config room is successfully set
  ERROR_SET_AVAILABLE_HOME = 2 // Returned only when set available home request fails
  ERROR_FINDING_CONTROL = 3 // Returned control is not found
  ERROR_WAITING_FOR_CONTROL_ONLINE = 4 // Returned when control is found but never comes online
  ERROR_CONFIGURATION = 5 // Returned when a blocking error occurs during configuration
}

enum MobileLoadConfigurationStatus {
  SUCCESS = 1
  HIGH_WATTAGE = 2
  MAGNETIC = 3
  CONFIGURATION_ERROR = 4
  MISSING_GANGBOX = 5
  LOW_WATTAGE = 6
  MULTIWAY_NON_BRILLIANT = 7
  MULTIWAY_ALL_BRILLIANT = 8 
}

enum MobileConnectivityStatus {
  // Primary goal connectivity status is CLOUD_CONNECTED, anything less is a sort of error mode
  // This is because direct connections are not sufficient since there are things
  // owned by cloud (like room names, and other things in configuration_virtual_device) that are needed.

  CLOUD_CONNECTED = 1 // May or may not be connected directly to Brilliant Controls as well
  PARTIAL_CONNECTED = 2 // Connected directly to Brilliant Controls only and not cloud
  DISCONNECTED = 3 // Not connected to Cloud nor Brilliant Controls directly
}

enum AddMeshResult {
  SUCCESS = 1
  FAIL_ADD_TO_BRILLIANT_MESH = 2
  TIMEOUT_ADD_TO_BRILLIANT_MESH  = 3
  GENERIC_ERROR = 8
  NOT_ADDED = 10
}

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
  LIVE_VIEW_DISCONNECTED = 15
  FAILED_CHANGE_HOME_LOCATION = 16
  FAILED_CREATE_ZENDESK_TICKET = 17
  FAILED_DELETE_HOME_VERIFICATION_CODE = 18
  FAILED_DELETE_HOME = 19
  FAILED_PAIRING_LOGIN = 20
  FAILED_PAIRING_VERIFY_MFA = 21
  FAILED_PAIRING_GET_MF_HOMES = 22
  FAILED_PAIRING_GET_MF_HOME_TOKEN = 23
  FAILED_GET_MF_USERNAME = 24
  FAILED_GET_INTEGRATION_LINKING_URL = 25
  FAILED_RESET_INTEGRATION = 26
  FAILED_SET_AVAILABLE_HOME = 27
}

enum MobileEventDeviceType {
  LIGHT = 1
  LOCK = 2
  CLIMATE = 3
  GENERIC_TOGGLE = 4
  MUSIC = 5
  SHADE = 6
  GARAGE_DOOR = 7
  OTHER = 8
  BUILDING_ENTRY_PANEL = 9
  LEAK_DETECTOR = 10
  BRILLIANT_DEVICE = 11
  MOBILE = 12
  CAMERA = 13
  SECURITY_SYSTEM = 14
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
  LED_BRIGHTNESS = 7
}

enum MobileMeshNetworkEventType {
  NETWORK_KEY_CREATION = 1
  APP_KEY_CREATION = 2
}

enum MobileNotificationType {
  POPUP = 1
  FULLSCREEN = 2 // May be implemented as an actual screen
  BOTTOM_DRAWER = 3
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

enum MobileSettingsDetail {
  GENERAL = 1
  MESH_OWNER = 2
  SLIDER_SETTINGS = 3
}

enum MobileToggleType {
  ON = 1
  LOCK = 2
  GLOBAL_ON = 3
  ACCESS_GRANTED = 4
  MY_POSITION = 5
  STOP = 6
  UP = 7
}

enum MobileUnlockResult {
  SUCCESS = 1
  FAILURE = 2
  LOCKED_OUT = 3
  CONFIRMED_NEW_PIN = 4 // Currently only logged for home passcode attempt
}

enum MobileUnlockType {
  PIN = 1
  BIOMETRICS = 2
}

enum LiveViewConnectionState {
  NEW = 1
  ICE_GATHERING_START = 2
  ICE_GATHERING_END = 3
  ADDING_SESSION_START = 4
  ADDING_SESSION_END = 5
  ADDING_SESSION_ERROR = 6
  PEER_ADDED_SESSION = 7
  UPDATING_PEER_CONNECTION = 8
  CONNECTED = 9
  PEER_REMOVED_SESSION = 10
}

enum InstallNameStatus {
  KEPT_AUTO_GENERATED = 1
  CHANGED_AUTO_TO_USER = 2
  USER_GENERATED = 3
}

// END LOGGING ENUMS


// BEGIN LOGGING STRUCTS

struct MobileBLEProvisioningEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: MobileBLEProvisioningEventStatus ble_provisioning_status
  8: MobileBLEDeviceType ble_device_type
  9: string ble_device_id
  10: string last_provisioning_state
  // Concatenated dictionary of SwitchPropertyIDs to their values
  // "(FAILURE)" indicates we attempted but did not succeed in setting the property
  // "(SKIPPED)" indicates we did not attempt to set this property due to missing information.
  // Note this is not always an error case (e.g. not setting forwarding address for the load side switch)
  11: string configuration_state
  12: i32 ble_firmware_version
  13: i64 time_elapsed_seconds
  14: i16 owner_rssi
  15: AddMeshResult add_mesh_result
  16: mobile_installation_guide.MeshProvisionStatus final_status
  17: string user_id
  18: string app_class
  19: bool is_free_pairing
  20: string provisioning_message_state
}

struct MobileConnectivityEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: MobileConnectivityStatus connectivity_status
  // Time since AppCoordinator start() was called
  10: i64 time_since_start_ms
  // Time since last foreground (checkAppVersion()), this will usually be close to time_since_start_ms
  // An example where it may be different is if we backgrounded in the installation guide
  11: i64 time_since_launch_ms
  // Time since the stateManager last emitted the Loading status (spinner is displayed when loading is emitted)
  // This should be used to determine how long a user saw the loading spinner.
  12: i64 time_since_loading_ms
  // This is reset on every start()
  13: MobileConnectivityStatus farthest_status_in_session
}

struct MobileControlConfigurationEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: MobileControlConfigurationEventStatus control_configuration_status
  10: installation_template.InstallationDeviceType control_device_type
  11: string control_device_id
  12: mobile_installation_guide.ControlConfigurationStatus final_control_configuration_state
  // Concatenated dictionary of GangboxIndexes to list of MobileLoadConfigurationStatus
  // Multiple can apply (e.g. SUCCESS with others means a non blocking status)
  13: string load_configuration_state
  14: i64 time_elapsed_seconds
  15: bool is_join_home // Whether we scanned a join home QR code or not
  16: bool is_reconfiguration // Based on whether a room is already assigned to device_config
  17: bool has_multiway_non_brilliant
  18: bool has_multiway_all_brilliant
  // Number of devices controlling the load with the most controlling devices.
  19: i32 max_number_of_devices_for_load
}

struct MobileCustomURLLaunchEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string app_class
  8: string base_url
  9: string full_url
}

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
  12: string app_class
  13: string integration_name
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
  12: string app_class
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
  13: string app_class
  14: string integration_name
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
  11: string app_class
}

struct MobileInstallationConfigChangedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string installation_device_type
  9: string previous_installation_config
  10: string new_installation_config
  11: string install_id
}

struct MobileInstallationEndedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string installation_device_type
  9: string guide_version
  10: string exit_section
  11: string app_class
}

struct MobileInstallationFeedbackEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string installation_device_type
  8: string guide_version
  9: bool success
  10: string helpfulness
  11: string additional_help
  12: string free_response // TO BE EVENTUALLY DEPRECATED
  13: string app_class
}

struct MobileInstallationGroupDeviceStartedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string installation_device_type
  8: string guide_version
  9: string app_class
  10: i32 load_index // This log is logged for each load (e.g. twice for a 2g with load index 0 and 1)
  11: string light_type
  12: string wattage_type
  13: string installation_type // single_pole, multiway, outlet, outlet_controlled_light, etc.
  14: bool dimmable
  15: bool is_existing_device
  16: bool first_time
  18: string install_id
  19: string load_id
  20: string group_id
}

struct MobileInstallationGroupDeviceEndedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string installation_device_type
  8: string guide_version
  9: string app_class
  10: i32 load_index // This log is logged for each load (e.g. twice for a 2g with load index 0 and 1)
  11: string installation_type // single_pole, multiway, outlet, outlet_controlled_light, etc.
  12: string install_id
  13: string load_id
  14: string group_id
}

struct MobileInstallationGroupFeedbackEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string guide_version
  8: i32 rating
  9: string app_class
}

struct MobileInstallationStartedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string installation_device_type
  8: string guide_version
  9: string app_class
}

struct MobileJoinedHomeEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string app_class
}

struct MobileOfflineEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: MobileOfflineStatus offline_status
  8: string app_class
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
  10: string app_class
}

struct MobileDeviceNotificationButtonTappedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string notification_name
  8: string button_name
  9: string user_id
  10: string app_class
  11: MobileEventDeviceType device_type
  12: string integration_name
  13: cross_platform_log.PhysicalDeviceModel physical_device_model
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
  9: string app_class
}

struct MobileDeviceNotificationViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string notification_name
  8: string user_id
  9: string app_class
  10: MobileNotificationType notification_type
  11: MobileEventDeviceType device_type
  12: string integration_name
  13: cross_platform_log.PhysicalDeviceModel physical_device_model
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
  11: string app_class
}


struct MobileSceneExecutedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
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
  9: string app_class
}

struct MobileDeviceSettingsScreenViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string source_screen
  8: string user_id
  9: string app_class
  10: MobileEventDeviceType device_type
  11: string integration_name
  12: cross_platform_log.PhysicalDeviceModel physical_device_model
  13: MobileSettingsDetail settings_detail
}

struct MobileDeviceSettingsButtonTappedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: MobileEventDeviceType device_type
  10: string integration_name
  11: cross_platform_log.PhysicalDeviceModel physical_device_model
  12: MobileSettingsDetail settings_detail
  13: string button_name
}

struct MobileSectionExpansionToggleEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: bool expanding
  9: string app_class
}

struct MobileImportPartnerSceneEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string partner_name
  8: string user_id
  9: string app_class
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
  9: string app_class
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
  9: string app_class
  10: MobileUnlockType unlock_type
}

struct MobileLiveviewSessionFeedbackEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string network_type
  8: string session_id
  9: i32 quality_level
  10: string screen_name
  11: string app_class
  12: i32 session_count
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
  13: i64 connection_time_elapsed_seconds
  14: string local_candidate_type
  15: string remote_candidate_type
  16: string app_class
  17: string ice_candidates
  18: string remote_video_params
  19: i64 session_start_ts
  20: i64 ice_servers_ts
  21: i64 ice_gathering_ts
  22: i64 updated_peripheral_ts
  23: i64 peer_updated_ts
  24: i64 connected_ts
  25: string peer_device_id
  26: string remote_audio_params
}

struct MobileLiveviewUsageReportEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: bool hold_to_talk_toggled
  8: bool sound_toggled
  9: string session_id
  10: string app_class
}

struct MobileMeshNetworkEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string app_class
  8: MobileMeshNetworkEventType network_event_type
  9: i64 modification_timestamp
}

struct MobileProvisioningCancelEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string app_class
  8: i64 time_elapsed_seconds
}

struct MobileLiveviewSupportEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string user_id
  7: string app_class
  8: string h264_decoders
  9: string h264_hw_decoders
  10: bool supported
}

struct MobileHomePasscodeAttemptEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: MobileUnlockResult unlock_result
  8: string user_id
  9: string app_class
}

struct MobileInstallDeviceAddedToGuideEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: InstallNameStatus name_status
  10: string installation_device_type
}

struct MobileInstallLoadAddedToGuideEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: InstallNameStatus name_status
  10: string installation_device_type
}

struct MobileInstallSwitchConnectEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: bool wallplate_attached
}

struct MobileThirdPartyDeviceAddedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: string integration_name
  10: string flow_type
}

struct MobileThirdPartyScreenViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string source_screen
  8: string user_id
  9: string app_class
  10: string integration_name
}

struct MobileThirdPartyButtonTappedEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string button_name
  8: string user_id
  9: string app_class
  10: string integration_name
}

struct MobileThirdPartyOverlayViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string overlay_name
  8: string user_id
  9: string app_class
  10: string integration_name
}

struct MobileThirdPartyRequestEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: string request_text
  10: string request_context
}

struct MobileSecuritySystemAdjustmentAttemptEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: string update_state
  10: string integration_name
  11: bool pin_required
  12: string previous_state
}
