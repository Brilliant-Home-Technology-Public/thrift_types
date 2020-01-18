namespace py thrift_types.mobile_installation_guide
namespace java thrift_types.mobile_installation_guide

// MOST RECENT VERSION:
const string MOBILE_GUIDE_VERSION_20190403 = "20190403"

// OLD VERSIONS:
// NONE

enum InstallationDeviceType {
  ONE_GANG = 1
  TWO_GANG = 2
  THREE_GANG = 3
  FOUR_GANG = 4
  BRILLIANT_SWITCH = 5
  BRILLIANT_PLUG = 6
}

enum InstallLoadType {
  LED = 1
  CFL = 2
  INCANDESCENT = 3
  MAGNETIC_LIGHTING = 4
  SMART_LIGHT_BULB = 5
  FAN = 6
  ON_OFF_SWITCH = 7
  POWER_OUTLET = 8
  OTHER = 9
}

enum InstallWattage {
  LESS_THAN_10W = 1
  BETWEEN_10_AND_150W = 2
  GREATER_THAN_150W = 3
  BETWEEN_150_AND_300W = 4
  BETWEEN_10_AND_300W = 5
  GREATER_THAN_300W = 6
  NOT_SURE = 7
}

enum InstallConfig {
  SINGLE_POLE = 1
  LOAD = 2
  LINE = 3
  FOURWAY = 4
  NOT_SURE = 5
}
 
struct GuideOverlay {
  1: string overlay_identifier
  2: string overlay_title
  3: string overlay_message
  4: optional string overlay_confirm_button_title
  5: optional string overlay_confirm_url
  6: optional string overlay_secondary_button_title
  7: optional string overlay_secondary_button_url
  8: optional string overlay_underline_button_title
  9: optional string overlay_underline_button_url
}
 
enum GuideOperator {
  EQUAL = 1
  NOT_EQUAL = 2
  IS_SET = 3
  AND = 4 // Evaluates child rules and validation_value of 1 or 0
  OR = 5 // Evaluates child rules and validation value of 1 or 0
}
 
const string MOBILE_GUIDE_RULE_COMPOSITE_IDENTIFIER = "composite_identifier"
const string MOBILE_GUIDE_RULE_ANY_IDENTIFIER = "any_identifier"

struct GuideRule {
  1: GuideOperator rule_operator
  2: string target_identifier
  3: string validation_value
  4: optional GuideOverlay overlay // If present, when rule is FIRST violated the overlay will be presented
  5: optional list<GuideRule> child_rules
}
 
enum GuideFieldType {
  VERTICAL_OPTION_QUESTION = 1
  HORIZONTAL_OPTION_QUESTION = 2 // Max of 3 options
  SETUP_VERIFICATION = 3
  INSTALLATION_SUCCESS = 4
  SETUP_PROMPT = 5
  ROUNDED_CARD = 6
  VERTICAL_DISPLAY = 7 // Has no options, will display primary and secondary labels, and image URL according to display rule
  STATIC_SUMMARY = 8 // Will display image, primary label, secondary label and options in summary box with checkmarks
  STATIC_SUMMARY_DESCRIPTION = 9 // Will display image, primary label, secondary label and options in summary box without checkmarks
  FREEFORM_TEXT = 10
  SWITCH_GESTURE = 11
  BLUETOOTH_STATUS = 12 // Bluetooth Icon and Status String
}
 
struct GuideOption {
  1: string display_name
  2: string option_value 
  3: optional string image_url
  4: optional list<GuideRule> display_rules // Logical statement reference field identifiers and option values
  5: optional string secondary_display_label
}

struct GuideField {
  1: string identifier
  2: GuideFieldType field_type
  3: optional list<GuideOption> options // Options to display
  4: optional string primary_label // Main text for field
  5: optional string secondary_label // Secondary text for field
  6: optional string large_image_url // Primary image for field
  7: optional list<GuideRule> display_rules // Logical statement referencing field identifiers and option values
  8: optional string tertiary_label // Footer text for field
  9: optional string video_url // Could be web or bundle protocol
  10: optional GuideOverlay help_overlay
  11: optional string secondary_image_url
}
 
struct GuidePage {
  1: string identifier
  2: optional string title_override
  3: list<GuideField> fields
  // If confirmTitle is present, a confirm button will display locked to the bottom of the screen
  // If not, the confirm will be taken once all fields have been processed and the last option is selected
  4: optional string confirm_title
  5: optional string underline_button_title
  6: optional string underline_button_url
  7: optional list<GuideRule> display_rules // Logical statement referencing field identifiers and option values
  8: optional string confirm_button_url // If nil this will just process nextTapped
}

enum GuideScreenType {
  BARCODE_SCREEN = 1
  VERTICAL_SCROLLING = 2
  HORIZONTAL_SCROLLING = 3
  WIRE_PHOTOS = 4
  INSTALL_SUCCESS = 5
  SWITCH_PROVISIONING = 6
  DEVICE_SETUP_MINIMUM_DIM = 7
  DEVICE_SETUP_FORWARDING = 8
  DEVICE_SETUP_OWNERSHIP = 9
}
 
struct GuideLoads {
  1: string identifier
  2: string display_name
  3: optional string image_url
}
 
struct GuideScreen {
  1: string identifier
  2: GuideScreenType screen_type
  3: string title // If the current page does not have a title override, this will be the title of the page
  4: optional string image_title // If the current page does not have a title override, this will replace the title of the page
  5: list<GuidePage> pages
  6: optional list<GuideLoads> loads // If this is present, header will be displayed AND pages will be repeated per load
  7: optional list<GuideRule> display_rules // Rules that must pass in order for the screen to display
  8: optional list<GuideRule> validation_rules // Rules to check after every option selection
  9: optional list<GuideRule> additional_rules // Rules to check after every option selection but does not halt progress
}

struct GuideSection {
  1: string identifier
  2: string title
  3: list<GuideScreen> screens
  4: optional list<GuideRule> enabled_rules
  5: string group_identifier
}

struct InstallationGuide {
  1: string version
  2: InstallationDeviceType device_type
  3: list<GuideSection> sections
}


const string MOBILE_GUIDE_COMPUTED_IMAGE_URL_WIRING_DIAGRAM = "COMPUTED_IMAGE_URL_WIRING_DIAGRAM"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_COMMON = "COMPUTED_TEXT_CONTINUE_LABELING_COMMON"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_COMPLETION = "COMPUTED_TEXT_CONTINUE_LABELING_COMPLETION"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_COMPLETION_TITLE = "COMPUTED_TEXT_CONTINUE_LABELING_COMPLETION_TITLE"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_L1 = "COMPUTED_TEXT_CONTINUE_LABELING_L1"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_TRANSITION = "COMPUTED_TEXT_CONTINUE_LABELING_TRANSITION"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_TRANSITION_TITLE = "COMPUTED_TEXT_CONTINUE_LABELING_TRANSITION_TITLE"

// Keep list so we can prevent these constants from ever being displayed in text
const list<string> MOBILE_GUIDE_CONSTANTS_COMPUTED_IMAGES = [
  MOBILE_GUIDE_COMPUTED_IMAGE_URL_WIRING_DIAGRAM,
]
// Keep list so we can prevent these constants from ever being displayed in text
const list<string> MOBILE_GUIDE_CONSTANTS_COMPUTED_TEXT = [
  MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_COMMON,
  MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_COMPLETION,
  MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_COMPLETION_TITLE,
  MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_L1,
  MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_TRANSITION
  MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_TRANSITION_TITLE,
]

const string MOBILE_GUIDE_FIELD_ALL_BRILLIANT_PREFIX = "field_all_brilliant_"
const string MOBILE_GUIDE_FIELD_DEVICE_ID = "field_device_id"
const string MOBILE_GUIDE_FIELD_DEVICE_NAME = "field_device_name"
const string MOBILE_GUIDE_FIELD_DEVICE_ROOM_ID = "field_device_room_id"
const string MOBILE_GUIDE_FIELD_DEVICE_SETUP_ID = "field_device_setup_id"
const string MOBILE_GUIDE_FIELD_DEVICE_SETUP_MIN_DIMMABLE_PREFIX = "field_device_setup_minimum_dim_level_"
const string MOBILE_GUIDE_FIELD_DEVICE_SETUP_OWNER_ID = "field_device_setup_owner_id"
const string MOBILE_GUIDE_FIELD_DIMMABLE_PREFIX = "field_dimmable_"
const string MOBILE_GUIDE_FIELD_FORWARDING_ADDRESS = "field_forwarding_address"
const string MOBILE_GUIDE_FIELD_FORWARDING_DEVICE_SETUP_ID = "field_forwarding_device_setup_id"
const string MOBILE_GUIDE_FIELD_FORWARDING_DEVICE_ID = "field_forwarding_device_id"
const string MOBILE_GUIDE_FIELD_FORWARDING_PERIPHERAL_ID = "field_fowarding_peripheral_id"
const string MOBILE_GUIDE_FIELD_HAS_QR_CODE = "field_has_qr_code"
const string MOBILE_GUIDE_FIELD_INSTALL_CONFIG_PREFIX = "field_install_config_"
const string MOBILE_GUIDE_FIELD_IS_4_WAY_PREFIX = "field_multiway_is_4_way_"
const string MOBILE_GUIDE_FIELD_LINE_SIDE_MULTIMETER_PREFIX = "field_line_side_multimeter_question_"
const string MOBILE_GUIDE_FIELD_LINE_SIDE_NCV_PREFIX = "field_line_side_ncv_question_"
const string MOBILE_GUIDE_FIELD_LOAD_NAME_PREFIX = "field_load_name_"
const string MOBILE_GUIDE_FIELD_LOAD_ROOM_IDS_PREFIX = "field_load_room_ids_"
const string MOBILE_GUIDE_FIELD_LOAD_TYPE_PREFIX = "field_load_type_"
const string MOBILE_GUIDE_FIELD_PRODUCT_SKU = "field_product_sku"
const string MOBILE_GUIDE_FIELD_PRODUCT_TYPE = "field_product_type"
const string MOBILE_GUIDE_FIELD_PROVISIONING_COMPLETE = "field_provisioning_complete"
const string MOBILE_GUIDE_FIELD_SETUP_FLOW = "field_setup_flow"
const string MOBILE_GUIDE_FIELD_STATIC_AUTH_DATA_HEX = "field_static_auth"
const string MOBILE_GUIDE_FIELD_SWITCHES_COUNT_PREFIX = "field_switches_count_"
const string MOBILE_GUIDE_FIELD_USER_IDENTIFIED_AS_LINE = "field_user_identified_as_line_"
const string MOBILE_GUIDE_FIELD_USE_EXISTING_CONFIGURATION = "field_use_existing_configuration"
const string MOBILE_GUIDE_FIELD_VERSION = "field_version"
const string MOBILE_GUIDE_FIELD_WATTAGE_PREFIX = "field_wattage_"

const string MOBILE_GUIDE_OPTION_NOT_SURE = "not_sure"

const string MOBILE_GUIDE_OVERLAY_TOOLS_WARNING = "overlay_tools_warning"

const string MOBILE_GUIDE_PARAM_KEY_ARTICLE_ID = "article_id"

const string MOBILE_GUIDE_SCREEN_BARCODE = "screen_barcode_scan"
const string MOBILE_GUIDE_SCREEN_BREAKER_QUESTION = "screen_breaker_question"
const string MOBILE_GUIDE_SCREEN_BREAKER_IDENTIFICATION = "screen_breaker_identification"
const string MOBILE_GUIDE_SCREEN_COMPLETE_SETUP = "screen_complete_setup"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_POST_PROVISION = "screen_device_setup_post_provision"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_MINIMUM_DIM = "screen_device_setup_minimum_dim"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_FORWARDING = "screen_device_setup_forwarding"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_OWNERSHIP = "screen_device_setup_ownership"
const string MOBILE_GUIDE_SCREEN_FEEDBACK_FORM = "screen_feedback_form"
const string MOBILE_GUIDE_SCREEN_INSTALLATION_PREP = "screen_installation_prep"
const string MOBILE_GUIDE_SCREEN_INSTALLATION_SUCCESS = "screen_installation_success"
const string MOBILE_GUIDE_SCREEN_NEUTRAL_WIRE_CHECK = "screen_installation_neutral_wire_check"
const string MOBILE_GUIDE_SCREEN_OVERVIEW = "screen_overview"
const string MOBILE_GUIDE_SCREEN_PLUG_PRE_PROVISION = "screen_plug_pre_provision"
const string MOBILE_GUIDE_SCREEN_PLUG_PROVISIONING = "screen_plug_provisioning"
const string MOBILE_GUIDE_SCREEN_PRODUCT_SELECTION = "screen_product_selection"
const string MOBILE_GUIDE_SCREEN_SAFETY_BREAKER_CHECK = "screen_safety_breaker_check"
const string MOBILE_GUIDE_SCREEN_SAFETY_CHECK = "screen_safety_check"
const string MOBILE_GUIDE_SCREEN_SWITCH_PROVISIONING = "screen_switch_provisioning"
const string MOBILE_GUIDE_SCREEN_TOOLS = "screen_tools"
const string MOBILE_GUIDE_SCREEN_TROUBLESHOOTING_BASE = "screen_troubleshooting_base"
const string MOBILE_GUIDE_SCREEN_USE_EXISTING_CONFIGURATION = "screen_use_existing_configuration"
const string MOBILE_GUIDE_SCREEN_WIRE_PHOTOS = "screen_wire_photos"

const string MOBILE_GUIDE_SECTION_ADD_DEVICES = "section_add_device"
const string MOBILE_GUIDE_SECTION_COMPATIBILITY = "section_compatibility"
const string MOBILE_GUIDE_SECTION_INSTALLATION_SUCCESS = "section_installation_success"
const string MOBILE_GUIDE_SECTION_TOOLS_AND_SAFETY = "section_tools_and_safety"
const string MOBILE_GUIDE_SECTION_WIRE_PHOTOS = "section_wire_photos"
const string MOBILE_GUIDE_SECTION_PROVISIONING = "section_provisioning"

const string MOBILE_GUIDE_URL_CONTACT_SUPPORT = "brl://guide/contactSupport"
const string MOBILE_GUIDE_URL_EXIT_INSTALLATION = "brl://guide/exitInstallation"
const string MOBILE_GUIDE_URL_EXIT_INSTALLATION_NO_FEEDBACK = "brl://guide/exitInstallationNoFeedback"
const string MOBILE_GUIDE_URL_FINISH_SCREEN = "brl://guide/finishScreen"
const string MOBILE_GUIDE_URL_HELP = "brl://guide/help"
const string MOBILE_GUIDE_URL_LIVE_CHAT = "brl://guide/liveChat"
const string MOBILE_GUIDE_URL_NEXT = "brl://guide/next"
const string MOBILE_GUIDE_URL_NOT_SURE = "brl://guide/notSure"
const string MOBILE_GUIDE_URL_PRODUCT_SELECTION = "brl://guide/productSelection"
const string MOBILE_GUIDE_URL_RESET = "brl://guide/reset"
const string MOBILE_GUIDE_URL_MARK_SINGLE_POLE = "brl://guide/markSinglePole"
const string MOBILE_GUIDE_URL_MARK_THREE_WAY = "brl://guide/markThreeWay"
const string MOBILE_GUIDE_URL_FEEDBACK_SUBMIT = "brl://guide/feedbackSubmit"
const string MOBILE_GUIDE_URL_TRIGGER_HELP_OVERLAY = "brl://guide/triggerHelpOverlay"
const string MOBILE_GUIDE_URL_TRIGGER_VALIDATION = "brl://guide/triggerValidation"

const string MOBILE_SECTION_GROUP_UNINSTALL = "section_group_uninstall"
const string MOBILE_SECTION_GROUP_INSTALL_NEW = "section_group_install_new"
const string MOBILE_SECTION_GROUP_PROVISION = "section_group_provision"

