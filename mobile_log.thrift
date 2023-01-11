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
const string MOBILE_GANGBOX_REVISION_SELECTION_EVENT_TABLE_NAME = "mobile_gangbox_revision_selection"
const string MOBILE_GROUP_LEVEL_EVENT_TABLE_NAME = "mobile_group_level"
const string MOBILE_GROUP_TOGGLE_EVENT_TABLE_NAME = "mobile_group_toggle"
const string MOBILE_HOME_ASSISTANT_SETUP_EVENT_TABLE_NAME = "mobile_home_assistant_setup"
const string MOBILE_HOME_PASSCODE_ATTEMPT_TABLE_NAME = "mobile_home_passcode_attempt"
const string MOBILE_IMPORT_PARTNER_SCENE_EVENT_TABLE_NAME = "mobile_import_partner_scene"
const string MOBILE_INSTALL_DEVICE_ADDED_TO_GUIDE_EVENT_TABLE_NAME = "mobile_install_device_added_to_guide"
const string MOBILE_INSTALL_LOAD_ADDED_TO_GUIDE_EVENT_TABLE_NAME = "mobile_install_load_added_to_guide"
const string MOBILE_INSTALL_SWITCH_CONNECT_EVENT_TABLE_NAME = "mobile_install_switch_connect"
const string MOBILE_INSTALLATION_CONFIG_CHANGED_EVENT_TABLE_NAME = "mobile_installation_config_changed"
const string MOBILE_INSTALLATION_FEEDBACK_EVENT_TABLE_NAME = "mobile_installation_feedback"
const string MOBILE_INSTALLATION_GROUP_DEVICE_ENDED_EVENT_TABLE_NAME = "mobile_installation_group_device_ended"
const string MOBILE_INSTALLATION_GROUP_DEVICE_STARTED_EVENT_TABLE_NAME = "mobile_installation_group_device_started"
const string MOBILE_INSTALLATION_GROUP_FEEDBACK_EVENT_TABLE_NAME = "mobile_installation_group_feedback"
const string MOBILE_JOINED_HOME_EVENT_TABLE_NAME = "mobile_joined_home"
const string MOBILE_LIVEVIEW_SESSION_FEEDBACK_EVENT_TABLE_NAME = "mobile_liveview_session_feedback"
const string MOBILE_LIVEVIEW_SUPPORT_EVENT_TABLE_NAME = "mobile_liveview_support"
const string MOBILE_LIVEVIEW_USAGE_REPORT_EVENT_TABLE_NAME = "mobile_liveview_usage_report"
const string MOBILE_MESH_NETWORK_EVENT_TABLE_NAME = "mobile_mesh_network_event"
const string MOBILE_OFFLINE_EVENT_TABLE_NAME = "mobile_offline"
const string MOBILE_OVERLAY_BUTTON_TAPPED_EVENT_TABLE_NAME = "mobile_overlay_button_tapped"
const string MOBILE_OVERLAY_VIEW_EVENT_TABLE_NAME = "mobile_overlay_view"
const string MOBILE_PAGE_VIEW_EVENT_TABLE_NAME = "mobile_page_view"
const string MOBILE_PHOTOS_ACTION_EVENT_TABLE_NAME = "mobile_photos_action"
const string MOBILE_PROVISIONING_CANCEL_EVENT_TABLE_NAME = "mobile_provisioning_cancel"
const string MOBILE_RTSP_SESSION_REPORT_EVENT_TABLE_NAME = "mobile_rtsp_session_report"
const string MOBILE_SCENE_EXECUTED_EVENT_TABLE_NAME = "mobile_scene_executed"
const string MOBILE_SCREEN_VIEW_EVENT_TABLE_NAME = "mobile_screen_view"
const string MOBILE_SECTION_EXPANSION_TOGGLE_EVENT_TABLE_NAME = "mobile_section_expansion_toggle"
const string MOBILE_SECURITY_DISARM_EVENT_TABLE_NAME = "mobile_security_disarm_event"
const string MOBILE_SECURITY_SYSTEM_ADJUSTMENT_ATTEMPT_EVENT_TABLE_NAME = "mobile_security_system_adjustment_attempt"
const string MOBILE_SETTINGS_LEVEL_EVENT_TABLE_NAME = "mobile_settings_level"
const string MOBILE_SETTINGS_TOGGLE_EVENT_TABLE_NAME = "mobile_settings_toggle"
const string MOBILE_SIMPLE_BUTTON_TAPPED_EVENT_TABLE_NAME = "mobile_simple_button_tapped"
const string MOBILE_SKYBELL_SESSION_REPORT_EVENT_TABLE_NAME = "mobile_skybell_session_report"
const string MOBILE_THIRDPARTY_BUTTON_TAPPED_EVENT_TABLE_NAME = "mobile_thirdparty_button_tapped"
const string MOBILE_THIRDPARTY_DEVICE_ADDED_EVENT_TABLE_NAME = "mobile_thirdparty_device_added"
const string MOBILE_THIRDPARTY_OVERLAY_BUTTON_TAPPED_EVENT_TABLE_NAME = "mobile_thirdparty_overlay_button_tapped"
const string MOBILE_THIRDPARTY_OVERLAY_VIEW_EVENT_TABLE_NAME = "mobile_thirdparty_overlay_view"
const string MOBILE_THIRDPARTY_REQUEST_EVENT_TABLE_NAME = "mobile_thirdparty_request"
const string MOBILE_THIRDPARTY_SCREEN_VIEW_EVENT_TABLE_NAME = "mobile_thirdparty_screen_view"
const string MOBILE_UNLOCK_ATTEMPT_EVENT_TABLE_NAME = "mobile_unlock_attempt"
const string MOBILE_VERIFICATION_CODE_ATTEMPT_EVENT_TABLE_NAME = "mobile_verification_code_attempt"
const string MOBILE_WEBRTC_SESSION_REPORT_EVENT_TABLE_NAME = "mobile_webrtc_session_report" // 22-05-18 Previously named "mobile_liveview_session_report"

// END MOBILE LOG TABLE NAMES

// START: MOBILE BUTTON NAME CONSTANTS
// KEEP ALPHABETIZED
const string MOBILE_BUTTON_NAME_ABOUT = "about"
const string MOBILE_BUTTON_NAME_ACCOUNT_SETTINGS = "account_settings"
const string MOBILE_BUTTON_NAME_ADD_DEVICE = "add_device"
const string MOBILE_BUTTON_NAME_ADD_LOCATION = "add_location"
const string MOBILE_BUTTON_NAME_ADD_NEW_DEVICES = "add_new_devices"
const string MOBILE_BUTTON_NAME_ADD_TO_HOME = "add_to_home"
const string MOBILE_BUTTON_NAME_APPLY = "apply"
const string MOBILE_BUTTON_NAME_AUDIO_SETTINGS = "audio_settings"
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
const string MOBILE_BUTTON_NAME_BYPASS = "bypass"
const string MOBILE_BUTTON_NAME_BYPASS_AND_ARM = "bypass_and_arm"
const string MOBILE_BUTTON_NAME_CALL_SUPPORT = "call_support"
const string MOBILE_BUTTON_NAME_CANCEL = "cancel"
const string MOBILE_BUTTON_NAME_CHANGE_HOME_PASSCODE = "change_home_passcode"
const string MOBILE_BUTTON_NAME_CHANGE_INTEGRATION_OWNER = "change_integration_owner"
const string MOBILE_BUTTON_NAME_CHANGE_LOCATION = "change_location"
const string MOBILE_BUTTON_NAME_CHANGE_MESH_OWNER = "change_mesh_owner"
const string MOBILE_BUTTON_NAME_CHANGE_PERMISSIONS = "change_permissions"
const string MOBILE_BUTTON_NAME_CHANGE_PIN = "change_pin"
const string MOBILE_BUTTON_NAME_CHANGE_TIME_ZONE = "change_time_zone"
const string MOBILE_BUTTON_NAME_CHILD_LOCK_DISABLE = "disable_child_lock"
const string MOBILE_BUTTON_NAME_CHILD_LOCK_ENABLE = "enable_child_lock"
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
const string MOBILE_BUTTON_NAME_DELETE_ACCOUNT = "delete_account"
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
const string MOBILE_BUTTON_NAME_DONT_SHOW_FUTURE_UPDATES = "dont_show_future_updates"
const string MOBILE_BUTTON_NAME_EDIT = "edit"
const string MOBILE_BUTTON_NAME_EDIT_FIXTURE = "edit_fixture"
const string MOBILE_BUTTON_NAME_EDIT_NAME = "edit_name"
const string MOBILE_BUTTON_NAME_EDIT_ROOM = "edit_room"
const string MOBILE_BUTTON_NAME_ENTER_MY_HOME = "enter_my_home"
const string MOBILE_BUTTON_NAME_EXISTING_ACCOUNT_CHOSEN = "existing_account_chosen"
const string MOBILE_BUTTON_NAME_EXIT = "exit"
const string MOBILE_BUTTON_NAME_EXIT_DEMO_MODE = "exit_demo_mode"
const string MOBILE_BUTTON_NAME_FAQ = "faq"
const string MOBILE_BUTTON_NAME_FINISH = "finish"
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
const string MOBILE_BUTTON_NAME_LANDSCAPE = "landscape"
const string MOBILE_BUTTON_NAME_LEARN_MORE = "learn_more"
const string MOBILE_BUTTON_NAME_LED_PREFERENCES = "led_preferences"
const string MOBILE_BUTTON_NAME_LIGHT_NOT_DIMMABLE = "light_not_dimmable"
const string MOBILE_BUTTON_NAME_LINK_TO_BCC = "link_to_bcc"
const string MOBILE_BUTTON_NAME_LIVE_CHAT = "live_chat"
const string MOBILE_BUTTON_NAME_LIVE_VIEW = "live_view"
const string MOBILE_BUTTON_NAME_LOCATION_SHARE = "location_share"
const string MOBILE_BUTTON_NAME_LOCK = "lock"
const string MOBILE_BUTTON_NAME_LOCK_APP = "lock_app"
const string MOBILE_BUTTON_NAME_LOG_IN = "log_in"
const string MOBILE_BUTTON_NAME_LOG_IN_AMAZON = "log_in_amazon"
const string MOBILE_BUTTON_NAME_LOG_IN_AS_AN_OPERATOR = "log_in_as_an_operator"
const string MOBILE_BUTTON_NAME_LOG_OUT = "log_out"
const string MOBILE_BUTTON_NAME_LOG_OUT_AMAZON = "log_out_amazon"
const string MOBILE_BUTTON_NAME_MARK_COMPLETED = "mark_completed"
const string MOBILE_BUTTON_NAME_MORE = "more"
const string MOBILE_BUTTON_NAME_MOTION_RULES = "motion_rules"
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
const string MOBILE_BUTTON_NAME_NOT_NOW = "not_now"
const string MOBILE_BUTTON_NAME_OCCUPIED_UNIT = "occupied_unit"
const string MOBILE_BUTTON_NAME_OFFLINE_HELP = "offline_help"
const string MOBILE_BUTTON_NAME_OK = "ok"
const string MOBILE_BUTTON_NAME_OPEN_SONOS = "open_sonos"
const string MOBILE_BUTTON_NAME_OPEN_SOURCE_LICENSES = "open_source_licenses"
const string MOBILE_BUTTON_NAME_OPEN_SOURCE_COMPLIANCE = "open_source_compliance"
const string MOBILE_BUTTON_NAME_OTHER = "other"
const string MOBILE_BUTTON_NAME_OTHER_RECOMMENDATIONS_CONNECTIVITY = "other_recommendations_connectivity"
const string MOBILE_BUTTON_NAME_OTHER_RECOMMENDATIONS_DIMMING = "other_recommendations_dimming"
const string MOBILE_BUTTON_NAME_PHOTO_LIBRARY_HELP = "photo_library_help"
const string MOBILE_BUTTON_NAME_PLAY_LINE_IN = "line_in_play"
const string MOBILE_BUTTON_NAME_PLAY_LINE_IN_TV = "line_in_tv_play"
const string MOBILE_BUTTON_NAME_PORTRAIT = "portrait"
const string MOBILE_BUTTON_NAME_POWER_CYCLE = "power_cycle"
const string MOBILE_BUTTON_NAME_PRIVACY_POLICY = "privacy_policy"
const string MOBILE_BUTTON_NAME_PROCEED = "proceed"
const string MOBILE_BUTTON_NAME_PROFILE_ICON = "profile_icon"
const string MOBILE_BUTTON_NAME_PROFILE_SETTINGS = "profile_settings"
const string MOBILE_BUTTON_NAME_PROVISION_BACK = "provision_back"
const string MOBILE_BUTTON_NAME_READY = "ready"
const string MOBILE_BUTTON_NAME_REFRESH_TEMPLATE = "refresh_template"
const string MOBILE_BUTTON_NAME_RELINK_ACCOUNT = "relink_account"
const string MOBILE_BUTTON_NAME_REMOTE_VIDEO_DISABLE = "disable_remote_video"
const string MOBILE_BUTTON_NAME_REMOTE_VIDEO_ENABLE = "enable_remote_video"
const string MOBILE_BUTTON_NAME_REPEAT = "repeat"
const string MOBILE_BUTTON_NAME_RESET_DEVICE = "reset_device"
const string MOBILE_BUTTON_NAME_RESET_INTEGRATION = "reset_integration"
const string MOBILE_BUTTON_NAME_RETRY = "retry"
const string MOBILE_BUTTON_NAME_REMOVE_BRILLIANT_CONTROL_DEVICE = "remove_brilliant_control"
const string MOBILE_BUTTON_NAME_REMOVE_BRILLIANT_MESH_DEVICE = "remove_brilliant_mesh_device"
const string MOBILE_BUTTON_NAME_REMOVE_DEVICE = "remove_device"
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
const string MOBILE_BUTTON_NAME_SEE_WHATS_NEW = "see_whats_new"
const string MOBILE_BUTTON_NAME_SELECT_ANOTHER_DEVICE = "select_another_device"
const string MOBILE_BUTTON_NAME_SELECT_DEVICES = "select_devices"
const string MOBILE_BUTTON_NAME_SELECT_PLUG = "select_plug"
const string MOBILE_BUTTON_NAME_SELECT_SWITCH = "select_switch"
const string MOBILE_BUTTON_NAME_SET_MOTION_SENSITIVITY = "set_motion_sensitivity"
const string MOBILE_BUTTON_NAME_SET_TIME = "set_time"
const string MOBILE_BUTTON_NAME_SET_UP = "set_up"
const string MOBILE_BUTTON_NAME_SET_UP_CONTROL = "set_up_control"
const string MOVILE_BUTTON_NAME_SET_UP_INTEGRATION = "set_up_integration"
const string MOBILE_BUTTON_NAME_SET_UP_LATER = "set_up_later"
const string MOBILE_BUTTON_NAME_SETTINGS = "settings"
const string MOBILE_BUTTON_NAME_SHOW_ME_HOW = "show_me_how"
const string MOBILE_BUTTON_NAME_SHUFFLE = "shuffle"
const string MOBILE_BUTTON_NAME_SKIP = "skip"
const string MOBILE_BUTTON_NAME_SKIP_ZIP_CODE = "skip_zip_code"
const string MOBILE_BUTTON_NAME_SLIDER_SETTINGS = "slider_settings"
const string MOBILE_BUTTON_NAME_SOLID = "solid"
const string MOBILE_BUTTON_NAME_STOP_SCENE = "stop_scene"
const string MOBILE_BUTTON_NAME_SUBMIT = "submit"
const string MOBILE_BUTTON_NAME_SUNRISE = "sunrise"
const string MOBILE_BUTTON_NAME_SUNSET = "sunset"
const string MOBILE_BUTTON_NAME_SWITCH_HOME = "switch_home"
const string MOBILE_BUTTON_NAME_TIMEOUT_SELECT = "timeout_select"
const string MOBILE_BUTTON_NAME_TOGGLE = "toggle"
const string MOBILE_BUTTON_NAME_TROUBLESHOOT = "troubleshoot"
const string MOBILE_BUTTON_NAME_TRY_AGAIN = "try_again"
const string MOBILE_BUTTON_NAME_UNASSIGN_FIXTURE = "unassign_fixture"
const string MOBILE_BUTTON_NAME_UNMUTE = "unmute"
const string MOBILE_BUTTON_NAME_UPLOAD_PHOTO_START = "upload_photo"
const string MOBILE_BUTTON_NAME_VACANT_UNIT = "vacant_unit"
const string MOBILE_BUTTON_NAME_VIEW_ACCESS_CREDENTIALS = "view_access_credentials"
const string MOBILE_BUTTON_NAME_VIEW_ARTICLE = "view_article"
const string MOBILE_BUTTON_NAME_VIEW_HOMES = "view_homes"
const string MOBILE_BUTTON_NAME_VIEW_MOTION_DEVICE_SETTINGS = "view_motion_device_settings"
const string MOBILE_BUTTON_NAME_VIEW_PRIVACY_SETTINGS = "view_privacy_settings"
const string MOBILE_BUTTON_NAME_VISIT_SETTINGS = "visit_settings"
const string MOBILE_BUTTON_NAME_WHATS_NEW = "whats_new"
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
const string MOBILE_NAME_MODIFIER_ADD_THIRD_PARTY = "AddThirdParty"
const string MOBILE_NAME_MODIFIER_ADDITIONAL_ACCOUNTS = "AdditionalAccounts"
const string MOBILE_NAME_MODIFIER_ADJUST_LED = "AdjustLED"
const string MOBILE_NAME_MODIFIER_ALEXA_SETUP_FAILURE = "AlexaSetupFailure"
const string MOBILE_NAME_MODIFIER_BCC_HOMES = "BCCHomes"
const string MOBILE_NAME_MODIFIER_BRILLIANT_DEVICES_CONNECTED = "BrilliantDevicesConnected"
const string MOBILE_NAME_MODIFIER_CONFIRM = "Confirm"
const string MOBILE_NAME_MODIFIER_CONFIRM_NEW_PIN = "ConfirmNewPin"
const string MOBILE_NAME_MODIFIER_CONTROL = "Control"
const string MOBILE_NAME_MODIFIER_CREATE_NEW_PIN = "CreateNewPin"
const string MOBILE_NAME_MODIFIER_DELETE_ACCOUNT = "DeleteAccount"
const string MOBILE_NAME_MODIFIER_DELETE_HOME = "DeleteHome"
const string MOBILE_NAME_MODIFIER_DEVICES = "Devices"
const string MOBILE_NAME_MODIFIER_DISABLED = "Disabled"
const string MOBILE_NAME_MODIFIER_DISPLAY = "Display"
const string MOBILE_NAME_MODIFIER_EMPTY_HOME = "EmptyHome"
const string MOBILE_NAME_MODIFIER_EMPTY_STATE = "EmptyState"
const string MOBILE_NAME_MODIFIER_ENTER_CURRENT_PIN = "EnterCurrentPin"
const string MOBILE_NAME_MODIFIER_ERROR = "Error"
const string MOBILE_NAME_MODIFIER_FAILURE = "Failure"
const string MOBILE_NAME_MODIFIER_GENERAL = "General"
const string MOBILE_NAME_MODIFIER_GESTURE_TUTORIAL = "GestureTutorial"
const string MOBILE_NAME_MODIFIER_IN_USE = "InUse"
const string MOBILE_NAME_MODIFIER_INSTALLATION_GUIDE = "InstallationGuide"
const string MOBILE_NAME_MODIFIER_INSTALLATION_COMPLETE = "InstallationComplete"
const string MOBILE_NAME_MODIFIER_LIGHT_ON_OFF_CHECK = "LightOnOffCheck"
const string MOBILE_NAME_MODIFIER_LOADING = "Loading"
const string MOBILE_NAME_MODIFIER_LOCK_SCREEN = "LockScreen"
const string MOBILE_NAME_MODIFIER_LOG_IN_OPERATOR = "LogInOperator"
const string MOBILE_NAME_MODIFIER_LOW_WATTAGE = "LowWattage"
const string MOBILE_NAME_MODIFIER_MOBILE = "Mobile"
const string MOBILE_NAME_MODIFIER_NEW = "New"
const string MOBILE_NAME_MODIFIER_NEW_FEATURES = "NewFeatures"
const string MOBILE_NAME_MODIFIER_NO_CONTROLS = "NoControls"
const string MOBILE_NAME_MODIFIER_NO_SCENES = "NoScenes"
const string MOBILE_NAME_MODIFIER_OVERLAY = "Overlay"
const string MOBILE_NAME_MODIFIER_PAIR = "Pair"
const string MOBILE_NAME_MODIFIER_PARTIAL = "Partial"
const string MOBILE_NAME_MODIFIER_PLUG = "Plug"
const string MOBILE_NAME_MODIFIER_POST_INSTALL = "PostInstall"
const string MOBILE_NAME_MODIFIER_RESET = "Reset"
const string MOBILE_NAME_MODIFIER_RESIDEO_PIN = "ResideoPin"
const string MOBILE_NAME_MODIFIER_SCENE_ACTION = "SceneAction"
const string MOBILE_NAME_MODIFIER_SIZE_ONE_GANG = "1G"
const string MOBILE_NAME_MODIFIER_SIZE_TWO_GANG = "2G"
const string MOBILE_NAME_MODIFIER_SIZE_THREE_GANG = "3G"
const string MOBILE_NAME_MODIFIER_SIZE_FOUR_GANG = "4G"
const string MOBILE_NAME_MODIFIER_SKILL_TUTORIAL = "SkillTutorial"
const string MOBILE_NAME_MODIFIER_SUCCESS = "Success"
const string MOBILE_NAME_MODIFIER_SWITCH = "Switch"
const string MOBILE_NAME_MODIFIER_TEMPLATE_LOAD_FAILED = "TemplateLoadFailed"
const string MOBILE_NAME_MODIFIER_TEMPLATE_MISMATCH = "TemplateMismatch"
const string MOBILE_NAME_MODIFIER_THIRD_PARTY = "ThirdParty"
const string MOBILE_NAME_MODIFIER_UPDATE_NAME = "UpdateName"
const string MOBILE_NAME_MODIFIER_USER_EXISTS = "BRLUserExists"
// END NAME MODIFIERS

// BEGIN MOBILE SCREEN PARAMETERS
const string MOBILE_SCREEN_PARAMETER_GROUP_ID = "group_id"
// END MOBILE SCREEN PARAMETERS

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
const string MOBILE_INTEGRATION_NAME_ALEXA = "alexa"
const string MOBILE_INTEGRATION_NAME_AGGREGATE = "aggregate"
const string MOBILE_INTEGRATION_NAME_BRILLIANT = "brilliant"
const string MOBILE_INTEGRATION_NAME_GOOGLE_ASSISTANT = "google_assistant"
const string MOBILE_INTEGRATION_NAME_HOMEKIT = "homekit"
const string MOBILE_INTEGRATION_NAME_PROPERTY_ACCESS = "property_access"
// END MOBILE INTEGRATION NAME CONSTANTS

// BEGIN MOBILE LIVEVIEW PROTOCOL NAMES
const string MOBILE_LIVEVIEW_PROTOCOL_NAME_RTSP = "rtsp"
const string MOBILE_LIVEVIEW_PROTOCOL_NAME_UNKNOWN = "unknown"
const string MOBILE_LIVEVIEW_PROTOCOL_NAME_WEBRTC = "webrtc"
const string MOBILE_LIVEVIEW_PROTOCOL_NAME_SKYBELL = "skybell"
// END MOBILE LIVEVIEW PROTOCOL NAMES

// BEGIN MOBILE GROUP ID CONSTANTS
const string MOBILE_GROUP_ID_AGGREGATE = "aggregate"
// END MOBILE GROUP ID CONSTANTS

const i16 MOBILE_INVALID_OWNER_RSSI = -128

enum MobileUserType {
  CONSUMER = 1
  MULTIFAMILY = 2
  DEMO = 3
}

enum MobileAddDeviceFlowType {
  WORKS_WITH = 1
  DEVICE_LIST = 2
  POST_INSTALL = 3
  DEEP_LINK = 4
  RELINK = 5
  THIRD_PARTY_INSTRUCTIONS = 6
}

enum MobileDeviceSettingsFlowType {
  DEVICE_SETTINGS = 1
  HOME_ASSISTANTS = 2
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
  FAILED_DELETE_ACCOUNT_VERIFICATION_CODE = 28 // Request to send code
  FAILED_DELETE_ACCOUNT_VERIFICATION = 29 // Request to validate code
  FAILED_DELETE_ACCOUNT_GET_HOMES = 30 // Request to get homes for delete account
  FAILED_DELETE_ACCOUNT = 31 // Request to actually delete account
  FAILED_REMOTELOCK_ACCESS_CODES = 32
  FAILED_SIGN_UP_ENTER_EMAIL = 33
  FAILED_ACCOUNT_ENTER_CREDENTIALS = 34
  FAILED_ACCOUNT_VERIFY_CODE = 35
  FAILED_ACCOUNT_GET_HOMES = 36
  FAILED_ACCOUNT_CONNECT_HOME = 37
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
  MOTION_CONTROL = 15
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
  PRIMARY_POSITION = 6
  LED_BRIGHTNESS = 7
  SECONDARY_POSITION = 8
  TILT_POSITION = 9
}

enum MobileMeshNetworkEventType {
  NETWORK_KEY_CREATION = 1
  APP_KEY_CREATION = 2
}

enum MobileNotificationType {
  POPUP = 1
  FULLSCREEN = 2 // May be implemented as an actual screen
  BOTTOM_DRAWER = 3
  TOP_BANNER = 4
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
  GESTURE_SETTINGS = 4
  AUDIO_SETTINGS = 5
  DISPLAY_SETTINGS = 6
  MOTION_SETTINGS = 7
  MOTION_SENSITIVITY = 8
}

enum MobileToggleType {
  ON = 1
  LOCK = 2
  GLOBAL_ON = 3
  ACCESS_GRANTED = 4
  MY_POSITION = 5
  STOP = 6
  UP = 7
  PRIMARY_ON = 8
  SECONDARY_ON = 9
  TILT = 10
}

enum MobileUnlockResult {
  SUCCESS = 1
  FAILURE = 2
  LOCKED_OUT = 3
  CONFIRMED_NEW_PIN = 4 // Currently only logged for home passcode attempt
}

enum MobileSecurityDisarmResult {
  SUCCESS = 1
  PIN_FAILURE = 2 // Authorization validation failed
  GENERIC_ERROR = 3 // Unspecified error such as network connectivity

}

enum MobilePasscodeContext {
  REMOVE_DEVICE = 1
  PRIVACY_SETTINGS = 2
  CHANGE_PASSCODE = 3
  RESIDEO_SECURITY_ACTION = 4
  VERIFY_EMAIL = 5
  VERIFY_MULTIFACTOR_AUTHENTICATION = 6
  SETUP_ALEXA = 7
  PROPERTY_ACCESS = 8
}

enum MobileUnlockType {
  PIN = 1
  BIOMETRICS = 2
}

enum WebRTCConnectionState {
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

enum RTSPConnectionState {
  NEW = 1
  PEER_ADDED_SESSION = 2
  CONNECTED = 3 // For RTSP, this means we have an RTSP Url to connect to
  PLAYING = 4 // For RTSP, Playing is recorded once GStreamer reports it is PLAYING url
  PEER_REMOVED_SESSION = 5
}

enum SkybellConnectionState {
  NEW = 1
  PEER_ADDED_SESSION = 2
  CONNECTED = 3 // For Skybell, this means we have host/port info to connect to
  PLAYING = 4 // For Skybell, Playing is recorded once GStreamer reports it is PLAYING from the connection
  PEER_REMOVED_SESSION = 5
}

enum InstallNameStatus {
  KEPT_AUTO_GENERATED = 1
  CHANGED_AUTO_TO_USER = 2
  USER_GENERATED = 3
}

enum InstallEditType {
  NEW = 1
  UPDATE = 2
}

enum MobileSettingsToggleType {
  SINGLE_FINGER_GESTURE = 1
  TWO_FINGER_GESTURE = 2
  DISPLAY_TIME = 3
  SHARED_LIBRARY = 4
  DISPLAY_ART = 5
  MUSIC = 6
  ARMED_STATE = 7
  WEATHER = 8
  THERMOSTAT = 9
  MICROPHONE_STATUS = 10
  ACTIVATE_WITH_MOTION = 11
  DEACTIVATE_AFTER_NO_MOTION = 12
  MOTION_DEACTIVATE_TIME = 13
  SHOW_FUTURE_UPDATES = 14
  ALEXA_ENABLED = 15
  WAKEWORD_CHIME = 16
}

enum MobileSettingsLevelType {
  MEDIA_VOLUME = 1
  ALERT_VOLUME = 2
  BRIGHTNESS = 3
  LOW_MOTION_THRESHOLD = 4
  HIGH_MOTION_THRESHOLD = 5
  WAKEWORD_SENSITIVITY = 6
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
  11: string configuration_state // as of 221116 only contains set requests
  12: i64 ble_firmware_version
  13: i64 time_elapsed_seconds
  14: i16 owner_rssi
  15: AddMeshResult add_mesh_result
  16: mobile_installation_guide.MeshProvisionStatus final_status
  17: string user_id
  18: string app_class
  19: bool is_free_pairing
  20: string provisioning_message_state
  21: string configuration_requests // get property requests
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
  20: string gangbox_revision
  21: string hardware_configuration_state // Variables set on Hardware Peripheral
  22: string motion_configuration_state // Variables set on Motion Detection Config Peripheral
  // NOTE: For readability, CapTouchSliderConfigs and GestureConfigs are abbreviated
  // and not serialized for this field.
  23: string device_configuration_state // Variables set on Device Config Peripheral
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
  14: bool common_area
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
  15: bool common_area
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

// NOTE:ONLY ADD FIELDS TO MobileOverlayButtonTappedEvent
// THAT ARE APPLICABLE TO ALL OVERLAY BUTTON TAPS
// If a specific ButtonTapped log needs another field, make a new struct
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
  11: MobileNotificationType overlay_type
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
  14: bool common_area
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
  10: MobileNotificationType overlay_type
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
  14: bool common_area
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

// NOTE: screen_parameters will be logged as a JSON string created
// from a dictionary, default empty.
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
  10: string screen_parameters
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
  14: bool common_area
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
  14: bool common_area
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
  13: string integration_name
  14: string protocol_name
}

// 22-05-18 Log previously named MobileLiveviewSessionReportEvent
struct MobileWebRTCSessionReportEvent {
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
  27: string integration_name
  28: i64 session_workaround_delay_ms
}

struct MobileRTSPSessionReportEvent {
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
  14: string app_class
  15: string peer_device_id
  16: string integration_name
  17: i64 playing_time_elapsed_seconds
  18: i64 session_workaround_delay_ms
}

struct MobileSkybellSessionReportEvent {
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
  14: string app_class
  15: string peer_device_id
  16: string integration_name
  17: i64 playing_time_elapsed_seconds
  18: i64 session_workaround_delay_ms
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
  11: string integration_name
  12: bool landscape_used // Set if landscape viewing is used at all
  13: bool rotation_sensor_used // Only set when rotation sensor CHANGES orientation.
  14: string protocol_name
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
  11: string integration_name
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
  10: MobilePasscodeContext passcode_context
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
  11: InstallEditType install_edit_type
  12: bool name_exists_in_completed
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
  11: InstallEditType install_edit_type
  12: bool name_exists_in_completed
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

struct MobileSecurityDisarmEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: MobileSecurityDisarmResult disarm_result
  8: string user_id
  9: string app_class
  10: string integration_name
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
  11: bool common_area
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
  11: bool common_area
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
  11: MobileNotificationType overlay_type
  12: bool common_area
}

struct MobileThirdPartyOverlayButtonTappedEvent {
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
  11: string integration_name
  12: MobileNotificationType overlay_type
  13: bool common_area
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
  13: bool common_area
}

struct MobileVerificationCodeAttemptEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: MobileUnlockResult passcode_result
  10: MobilePasscodeContext passcode_context
}

struct MobileSettingsToggleEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: MobileSettingsToggleType settings_toggle_type
  10: bool on
}

struct MobileSettingsLevelEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: MobileSettingsLevelType settings_level_type
  10: i32 level
}

struct MobileGangboxRevisionSelectionEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: installation_template.InstallationDeviceType control_device_type
  10: string gangbox_revision
}

struct MobilePageViewEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string page_name
  8: string user_id
  9: string app_class
  10: string version
}

struct MobileHomeAssistantSetupEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: string integration_name
  10: bool success
}

struct MobileGroupToggleEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: string group_id
  10: string unique_peripheral_ids
  11: MobileEventSource source
  12: MobileToggleType toggle_type
  13: bool on
  14: bool aggregate
}

struct MobileGroupLevelEvent {
  1: string table_name
  2: i64 ts
  3: string device_model
  4: string home_id
  5: string device_id
  6: string screen_name
  7: string user_id
  8: string app_class
  9: string group_id
  10: string unique_peripheral_ids
  11: MobileEventSource source
  12: MobileLevelType level_type
  13: i32 level
  14: bool aggregate
}
