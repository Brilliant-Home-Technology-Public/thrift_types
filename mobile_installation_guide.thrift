namespace py thrift_types.mobile_installation_guide
namespace java thrift_types.mobile_installation_guide

include "installation_template.thrift"

// MOST RECENT VERSION:
const string MOBILE_GUIDE_VERSION_20190403 = "20190403"

// OLD VERSIONS:
// NONE

enum MeshProvisionStatus {
  CREATING_NETWORK = 1
  ERROR_CREATING_NETWORK = 2
  PREPARING_FOR_PROVISIONING = 3
  ERROR_REMOVING_OLD_PERIPHERAL = 4
  SCANNING_FOR_UNPROVISIONED = 5
  SCAN_FOR_UNPROVISIONED_TIMEOUT = 6
  CONNECTING_TO_UNPROVISIONED = 7
  CONNECTED_TO_UNPROVISIONED = 8
  GETTING_UNICAST_ADDRESS = 9
  PROVISIONING_SETUP_FAILED = 10
  IDENTIFY_NODE = 11
  PROVISIONING_NODE = 12
  PROVISIONING_COMPLETE = 13
  PROVISION_FAILED = 14
  SCANNING_FOR_PROVISIONED = 15
  SCAN_FOR_PROVISION_TIMEOUT = 16
  CONNECTING_TO_PROVISIONED = 17
  CONNECTED_TO_PROVISIONED = 18
  VERIFYING_NET_KEY = 19
  VERIFYING_APP_KEY = 20
  BINDING_MODEL_APP_KEYS = 21
  SETTING_PUBLISH_ADDRESS = 22
  SETUP_COMPLETE = 23
  SETUP_TIMEOUT = 24
  SETUP_FAILED = 25
  ADDING_TO_BRILLIANT_MESH = 26
  AUTOMATIC_CONFIGURATION_PUSH = 29
  SUCCESSFULLY_ADDED_TO_BRILLIANT = 30
  FAILED_TO_ADD_TO_BRILLIANT = 31
  NOT_STARTED = 32
  BLUETOOTH_UNSUPPORTED = 33
  BLUETOOTH_UNAUTHORIZED = 34
  BLUETOOTH_OFF = 35
  FIRMWARE_CHECK = 36
  COMPATIBILITY_CHECK = 37
  GENERIC_ERROR = 38
  MESH_PROVISION_COMPLETE = 49 // Switch has app key, netkey, and unicast address bound
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
  10: optional string overlay_image_url
}

enum GuideOperator {
  EQUAL = 1
  NOT_EQUAL = 2
  IS_SET = 3
  AND = 4 // Evaluates child rules and validation_value of 1 or 0
  OR = 5 // Evaluates child rules and validation value of 1 or 0
  CONTAIN = 6 // Evaluates if string contains the validation value substring
  NOT_CONTAIN = 7 // Evaluates if string does not contain the validation value substring

  // Tries INTEGER comparison first, returning true if target value > validation value.
  // If either validation value or target value cannot be represented as Int,
  // does LEXCICOGRAPHIC comparison of the same as a backup.
  // Evaluates to false if value missing.
  GREATER_THAN = 8

  // Tries INTEGER comparison first, returning true if target value < validation value.
  // If either validation value or target value cannot be represented as Int,
  // does LEXCICOGRAPHIC comparison of the same as a backup.
  // Evaluates to false if value missing.
  LESS_THAN = 9
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
  INSTALLATION_SUCCESS = 3
  SETUP_PROMPT = 4
  ROUNDED_CARD = 5 // Options will function same as BOTTOM_SCREEN_FIELD for HorizontalPages
  VERTICAL_DISPLAY = 6 // Has no options, will display primary and secondary labels, and image URL according to display rule
  STATIC_SUMMARY = 7 // Will display image, primary label, secondary label and options in summary box with checkmarks
  STATIC_SUMMARY_DESCRIPTION = 8 // Will display image, primary label, secondary label and options in summary box without checkmarks
  FREEFORM_TEXT = 9
  SWITCH_GESTURE = 10
  BLUETOOTH_STATUS = 11 // Bluetooth Icon and Status String
  VERTICAL_CHECKBOX_QUESTION = 12
  INSTALLS_REMAINING = 13
  BOTTOM_SCREEN_FIELD = 14 // Configures UI pinned to bottom of screen on VerticalViewModel
  SCREEN_CONFIGURATION = 15 // Used by custom screens to pass values
  KEY_VALUE_LIST = 16 // Displays a key and value list from GuideOptions
  STEP_INSTRUCTION = 17 // Displays a field that has a step number and maybe a key/value listing
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
  12: optional list<string> primary_animation_images
  13: optional list<string> computed_formatting_replacements // List of compute constants to use in format strings
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
  9: optional string underline_button_logging_name
  10: optional string tip_text
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
  WARNING_SCREEN = 9
  ROOM_SELECTION = 10
  FREE_PAIRING = 11
  PROGRESSION_EDUCATION = 12
  ACTIVE_DEVICE_SETUP = 13
  BRL_DEVICE_PICKER = 14
  ADD_DEVICE_SCREEN = 15
  ADD_LOAD_SCREEN = 16
  LOAD_CONTROLLERS_SCREEN = 17
  LARGE_HOME_SUPPORT = 18
  CUSTOMIZE_SWITCH = 19
  DEVICE_GROUP_OVERVIEW = 20
  CONTROL_SELECTION = 21
  SKIP_INSTALL = 22
  CONTROL_PROVISIONING = 23
  SWITCH_WALLPLATE = 24
  LOW_WATTAGE_QUESTION = 25
  MULTIWAY_CONTROL_SUPPORT = 26
  DEVICE_SETUP_LED_LEVEL = 27
  CIRCUIT_LOAD_IDENTIFICATION = 28
  INSTALL_PARTIAL_SUCCESS = 29
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
  2: installation_template.InstallationDeviceType device_type
  3: list<GuideSection> sections
}

enum CompatibilityCheckResult {
  SUCCESS = 1
  GENERIC_ERROR = 2
  HIGH_WATTAGE = 3
  MAGNETIC_LOAD = 4
}

enum CompatibilityCheckState {
  SET_LOAD_TYPE_ONOFF = 1
  SET_ON = 2
  WAIT = 3
  GET_SWITCH_LOAD_TYPE = 4
  GET_POWER = 5
  GET_CURRENT_ZERO_CROSS = 6
}

const string MOBILE_GUIDE_COMPUTED_IMAGE_URL_WIRING_DIAGRAM = "COMPUTED_IMAGE_URL_WIRING_DIAGRAM"
const string MOBILE_GUIDE_COMPUTED_TEXT_COMPLETED_CONTROL = "COMPUTED_TEXT_COMPLETED_CONTROL"
const string MOBILE_GUIDE_COMPUTED_TEXT_COMPLETED_CONTROL_HELP = "COMPUTED_TEXT_COMPLETED_CONTROL_HELP"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_COMMON = "COMPUTED_TEXT_CONTINUE_LABELING_COMMON"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_COMPLETION = "COMPUTED_TEXT_CONTINUE_LABELING_COMPLETION"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_COMPLETION_TITLE = "COMPUTED_TEXT_CONTINUE_LABELING_COMPLETION_TITLE"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_L1 = "COMPUTED_TEXT_CONTINUE_LABELING_L1"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_TRANSITION = "COMPUTED_TEXT_CONTINUE_LABELING_TRANSITION"
const string MOBILE_GUIDE_COMPUTED_TEXT_CONTINUE_LABELING_TRANSITION_TITLE = "COMPUTED_TEXT_CONTINUE_LABELING_TRANSITION_TITLE"
const string MOBILE_GUIDE_COMPUTED_TEXT_DEVICE_NAME = "COMPUTED_TEXT_DEVICE_NAME"
const string MOBILE_GUIDE_COMPUTED_TEXT_LOAD_NAME_PREFIX = "COMPUTED_TEXT_LOAD_NAME_"
const string MOBILE_GUIDE_COMPUTED_TEXT_TEST_CONTROLS = "COMPUTED_TEXT_TEST_CONTROLS"
const string MOBILE_GUIDE_COMPUTED_TEXT_FORMAT_PLACEHOLDER = "COMPUTED_TEXT_PLACEHOLDER"

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
  MOBILE_GUIDE_COMPUTED_TEXT_COMPLETED_CONTROL,
  MOBILE_GUIDE_COMPUTED_TEXT_COMPLETED_CONTROL_HELP,
  MOBILE_GUIDE_COMPUTED_TEXT_DEVICE_NAME,
  MOBILE_GUIDE_COMPUTED_TEXT_TEST_CONTROLS,
]

const list<string> MOBILE_GUIDE_CONSTANTS_COMPUTED_TEXT_PREFIXES = [
  MOBILE_GUIDE_COMPUTED_TEXT_LOAD_NAME_PREFIX,
]

const string MOBILE_GUIDE_FIELD_ALL_BRILLIANT_PREFIX = "field_all_brilliant_"
const string MOBILE_GUIDE_FIELD_AUTO_MIN_DIM_CALIBRATION_SUCCEEDED_PREFIX = "field_auto_min_dim_calibration_suceeded_"
const string MOBILE_GUIDE_FIELD_BREAKER_ASSUMED = "field_breaker_assumed"
const string MOBILE_GUIDE_FIELD_BREAKER_QUESTION = "field_breaker_question"
const string MOBILE_GUIDE_FIELD_COMPLETE_SETUP_READY_TS = "field_complete_setup_ready_ts"
const string MOBILE_GUIDE_FIELD_DEVICE_ID = "field_device_id"
const string MOBILE_GUIDE_FIELD_DEVICE_NAME = "field_device_name"
const string MOBILE_GUIDE_FIELD_DEVICE_ROOM_ID = "field_device_room_id"
const string MOBILE_GUIDE_FIELD_DEVICE_SETUP_ID = "field_device_setup_id"
const string MOBILE_GUIDE_FIELD_DEVICE_SETUP_LOAD_ID_PREFIX = "field_device_setup_load_id_"
const string MOBILE_GUIDE_FIELD_DEVICE_SETUP_MIN_DIMMABLE_PREFIX = "field_device_setup_minimum_dim_level_"
const string MOBILE_GUIDE_FIELD_DEVICE_SETUP_OWNER_ID = "field_device_setup_owner_id"
const string MOBILE_GUIDE_FIELD_DEVICE_SETUP_OUTLET_CONTROLLED_LIGHT = "field_outlet_controlled_light"
const string MOBILE_GUIDE_FIELD_DIMMABLE_PREFIX = "field_dimmable_"
const string MOBILE_GUIDE_FIELD_FORWARDING_ADDRESS_PREFIX = "field_forwarding_address_"
const string MOBILE_GUIDE_FIELD_FORWARDING_DEVICE_SETUP_ID_PREFIX = "field_forwarding_device_setup_id_"
const string MOBILE_GUIDE_FIELD_FORWARDING_DEVICE_SETUP_LOAD_INDEX_PREFIX = "field_forwarding_device_setup_load_index_"
const string MOBILE_GUIDE_FIELD_FORWARDING_DEVICE_ID_PREFIX = "field_forwarding_device_id_"
const string MOBILE_GUIDE_FIELD_FORWARDING_PERIPHERAL_ID_PREFIX = "field_fowarding_peripheral_id_"
const string MOBILE_GUIDE_FIELD_HAD_CONFIGURATION_ERROR_PREFIX = "field_had_configuration_error_"
const string MOBILE_GUIDE_FIELD_HAD_VENDOR_MESSAGE_ERROR = "field_had_vendor_message_error"
const string MOBILE_GUIDE_FIELD_HAS_G1_AND_G3_NEUTRAL_BUNDLES = "field_has_g1_andg3_neutral_bundles"
const string MOBILE_GUIDE_FIELD_HAS_MULTIPLE_NEUTRAL_BUNDLES = "field_has_multiple_neutral_bundles"
const string MOBILE_GUIDE_FIELD_HAS_QR_CODE = "field_has_qr_code"
const string MOBILE_GUIDE_FIELD_HAS_SUCCESSFULLY_PROVISIONED = "field_has_successfully_provisioned"
const string MOBILE_GUIDE_FIELD_HIGH_WATTAGE_PREFIX = "field_high_wattage_"
const string MOBILE_GUIDE_FIELD_IDENTIFY_LINE_LOAD_KNOWN_PREFIX = "field_identify_line_load_known_"
const string MOBILE_GUIDE_FIELD_IDENTITY_LINE_IS_KNOWN_PREFIX = "field_identify_line_is_known_"
const string MOBILE_GUIDE_FIELD_IDENTITY_LOAD_IS_KNOWN_PREFIX = "field_identify_load_is_known_"
const string MOBILE_GUIDE_FIELD_INSTALL_CONFIG_PREFIX = "field_install_config_"
const string MOBILE_GUIDE_FIELD_IS_4_WAY_PREFIX = "field_multiway_is_4_way_"
const string MOBILE_GUIDE_FIELD_IS_FREE_PAIRING_PROVISION = "field_is_free_pairing_provision"
const string MOBILE_GUIDE_FIELD_IS_IMPLIED_CONFIG_PREFIX = "field_is_implied_config_"
const string MOBILE_GUIDE_FIELD_IS_LIGHT_FLICKERING_PREFIX = "field_is_light_flickering_"
const string MOBILE_GUIDE_FIELD_IS_LIGHT_ON_PREFIX = "field_is_light_on_"
const string MOBILE_GUIDE_FIELD_IS_LOW_WATTAGE_PREFIX = "field_is_low_wattage_"
const string MOBILE_GUIDE_FIELD_IS_VIRTUAL_LOAD_PREFIX = "field_is_virtual_load_"
const string MOBILE_GUIDE_FIELD_LED_LEVEL_PREFIX = "field_led_level_"
// The MOBILE_GUIDE_FIELD_LINE_SIDE_MULTIMETER_CONTROL_QUESTION may change into a prefix in the future.
// Right now, it refers to a gangbox as a whole (like a 2G) rather than the configuration of each slider.
const string MOBILE_GUIDE_FIELD_LINE_SIDE_MULTIMETER_CONTROL_QUESTION = "field_line_side_multimeter_control_question"
const string MOBILE_GUIDE_FIELD_LINE_SIDE_MULTIMETER_PREFIX = "field_line_side_multimeter_question_"
const string MOBILE_GUIDE_FIELD_LINE_SIDE_NCV_PREFIX = "field_line_side_ncv_question_"
const string MOBILE_GUIDE_FIELD_LOAD_CONTROLLED_BY_CONTROL_PREFIX = "field_load_controlled_by_control"
const string MOBILE_GUIDE_FIELD_LOAD_CONTROLLED_BY_REGULAR_DEVICE_PREFIX = "field_load_controlled_by_regular_device_"
const string MOBILE_GUIDE_FIELD_LOAD_CONTROLLED_BY_SWITCH_PREFIX = "field_load_controlled_by_switch_"
const string MOBILE_GUIDE_FIELD_LOAD_NAME_PREFIX = "field_load_name_"
const string MOBILE_GUIDE_FIELD_LOAD_ROOM_IDS_PREFIX = "field_load_room_ids_"
const string MOBILE_GUIDE_FIELD_LOAD_TYPE_PREFIX = "field_load_type_"
const string MOBILE_GUIDE_FIELD_MAGNETIC_LOAD_PREFIX = "field_magnetic_load_"
const string MOBILE_GUIDE_FIELD_MISSING_GANGBOX_PERIPHERAL_PREFIX = "field_missing_gangbox_peripheral_"
const string MOBILE_GUIDE_FIELD_MULTIWAY_ALL_OTHER_DEVICES_INSTALLED = "field_multiway_all_other_devices_installed"
const string MOBILE_GUIDE_FIELD_PRODUCT_SKU = "field_product_sku"
const string MOBILE_GUIDE_FIELD_PRODUCT_TYPE = "field_product_type"
const string MOBILE_GUIDE_FIELD_PROVISIONED_ADDRESS = "field_provisioned_address"
const string MOBILE_GUIDE_FIELD_SETUP_FLOW = "field_setup_flow"
const string MOBILE_GUIDE_FIELD_SKIP_INSTALL = "field_skip_install"
const string MOBILE_GUIDE_FIELD_STATIC_AUTH_DATA_HEX = "field_static_auth"
const string MOBILE_GUIDE_FIELD_SWITCH_FIRMWARE_VERSION = "field_switch_firmware_version"
const string MOBILE_GUIDE_FIELD_SWITCH_LIGHT_CHECK = "field_switch_light_check"
const string MOBILE_GUIDE_FIELD_SWITCHES_COUNT_PREFIX = "field_switches_count_"
const string MOBILE_GUIDE_FIELD_UNIDENTIFIED_FOURWAYS_PREFIX = "field_unidentified_fourways_"
const string MOBILE_GUIDE_FIELD_USER_IDENTIFIED_AS_LINE_PREFIX = "field_user_identified_as_line_"
const string MOBILE_GUIDE_FIELD_USE_EXISTING_CONFIGURATION = "field_use_existing_configuration"
const string MOBILE_GUIDE_FIELD_VERSION = "field_version"
const string MOBILE_GUIDE_FIELD_WATTAGE_PREFIX = "field_wattage_"

const string MOBILE_GUIDE_OPTION_NOT_SURE = "not_sure"

const string MOBILE_GUIDE_OVERLAY_ALL_OTHER_DEVICES_INSTALLED = "overlay_all_other_devices_installed"
const string MOBILE_GUIDE_OVERLAY_CONTROL_NO_QR_CODE = "overlay_control_no_qr_code"
const string MOBILE_GUIDE_OVERLAY_INSTALLATION_CHECK_TURN_LIGHT_OFF = "overlay_installation_check_turn_light_off"
const string MOBILE_GUIDE_OVERLAY_INSTALLATION_CHECK_TURN_LIGHT_ON = "overlay_installation_check_turn_light_on"
const string MOBILE_GUIDE_OVERLAY_TOOLS_WARNING = "overlay_tools_warning"
const string MOBILE_GUIDE_OVERLAY_SWITCH_FREE_PAIRING_READY_TO_CONNECT = "overlay_free_pairing_ready_to_connect"
const string MOBILE_GUIDE_OVERLAY_PLUG_FREE_PAIRING_READY_TO_CONNECT = "overlay_plug_free_pairing_ready_to_connect"

const string MOBILE_GUIDE_PARAM_KEY_ARTICLE_ID = "article_id"

const string MOBILE_GUIDE_SCREEN_BARCODE = "screen_barcode_scan"
const string MOBILE_GUIDE_SCREEN_BREAKER_QUESTION = "screen_breaker_question"
const string MOBILE_GUIDE_SCREEN_BREAKER_IDENTIFICATION = "screen_breaker_identification"
const string MOBILE_GUIDE_SCREEN_CIRCUIT_LOAD_IDENTIFICATION_PREFIX = "screen_circuit_load_identification_"
const string MOBILE_GUIDE_SCREEN_COMPLETE_SETUP = "screen_complete_setup"
const string MOBILE_GUIDE_SCREEN_CONNECT_DEVICES = "screen_connect_devices"
const string MOBILE_GUIDE_SCREEN_CONTROL_PROVISIONING = "screen_control_provisioning"
const string MOBILE_GUIDE_SCREEN_CONTROL_QR_CODE = "screen_control_qr_code"
const string MOBILE_GUIDE_SCREEN_CONTROL_SELECTION = "screen_control_selection"
const string MOBILE_GUIDE_SCREEN_CUSTOMIZE_SWITCH = "screen_customize_switch"
const string MOBILE_GUIDE_SCREEN_NAME_DEVICE = "screen_name_device"
const string MOBILE_GUIDE_SCREEN_NAME_LOAD = "screen_name_load"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_DIMMABLE_PREFIX = "screen_device_setup_dimmable_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_FINISH_CIRCUIT_PREFIX = "screen_device_setup_finish_circuit_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_FIXTURE_TYPE_PREFIX = "screen_device_setup_fixture_type_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_FORWARDING_PREFIX = "screen_device_setup_forwarding_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_OWNERSHIP_PREFIX = "screen_device_setup_ownership_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_INSTALL_CONFIG_PREFIX = "screen_device_setup_install_config_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_LED_LEVEL_PREFIX = "screen_device_setup_led_level_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_LIGHT_FLICKERING_PREFIX = "screen_device_setup_is_light_flickering_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_LIGHT_ON_PREFIX = "screen_device_setup_is_light_on_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_LIGHT_TYPE_PREFIX = "screen_device_setup_light_type_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_LOW_WATTAGE_PREFIX = "screen_device_setup_is_low_wattage_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_MINIMUM_DIM_PREFIX = "screen_device_setup_minimum_dim_"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_PLUG_TYPE = "screen_device_setup_plug_type"
const string MOBILE_GUIDE_SCREEN_DEVICE_SETUP_PROVISIONED_LOAD_PREFIX = "screen_device_setup_provisioned_load_"
const string MOBILE_GUIDE_SCREEN_FEEDBACK_FORM = "screen_feedback_form"
const string MOBILE_GUIDE_SCREEN_FOURWAY_CHECK_PREFIX = "screen_multiway_4way_check_"
const string MOBILE_GUIDE_SCREEN_FREE_PAIRING_SCAN = "screen_free_pairing_scan"
const string MOBILE_GUIDE_SCREEN_GANGBOX_MISSING = "screen_gangbox_missing"
const string MOBILE_GUIDE_SCREEN_HIGH_WATTAGE = "screen_high_wattage"
const string MOBILE_GUIDE_SCREEN_INCOMPATIBLE_SWITCH = "screen_incompatible_switch"
const string MOBILE_GUIDE_SCREEN_INSTALLATION_PARTIAL_SUCCESS = "screen_installation_partial_success"
const string MOBILE_GUIDE_SCREEN_INSTALLATION_PREP = "screen_installation_prep"
const string MOBILE_GUIDE_SCREEN_INSTALLATION_SUCCESS = "screen_installation_success"
const string MOBILE_GUIDE_SCREEN_LARGE_HOME_SUPPORT = "screen_large_home_support"
const string MOBILE_GUIDE_SCREEN_LABEL_CONTROL_PREFIX = "screen_label_control_slider_index_display_"
const string MOBILE_GUIDE_SCREEN_LABEL_LINE_LOAD_PREFIX = "screen_label_line_load_"
const string MOBILE_GUIDE_SCREEN_LIGHT_NOT_WORKING = "screen_light_not_working"
const string MOBILE_GUIDE_SCREEN_LINE_LOAD_TEST_SELECTION_PREFIX = "screen_line_load_test_selection_"
const string MOBILE_GUIDE_SCREEN_LINE_LOAD_WIRE_MULTIMETER_TEST_PREFIX = "screen_line_load_wire_multimeter_test_"
const string MOBILE_GUIDE_SCREEN_MAGNETIC_LOAD = "screen_magnetic_load"
const string MOBILE_GUIDE_SCREEN_MISSING_GANGBOX = "screen_missing_gangbox"
const string MOBILE_GUIDE_SCREEN_MULTIMETER_CHECK = "screen_multimeter_check"
const string MOBILE_GUIDE_SCREEN_MULTIWAY_ALL_DEVICES_INSTALLED = "screen_multiway_all_devices_installed_check"
const string MOBILE_GUIDE_SCREEN_MULTIWAY_CONTROL_SUPPORT = "screen_multiway_control_support"
const string MOBILE_GUIDE_SCREEN_NCV_DETECTOR_CHECK_PREFIX = "screen_ncv_detector_check_"
const string MOBILE_GUIDE_SCREEN_NEUTRAL_WIRE_CHECK = "screen_installation_neutral_wire_check"
const string MOBILE_GUIDE_SCREEN_OVERVIEW = "screen_overview"
const string MOBILE_GUIDE_SCREEN_PLUG_PRE_PROVISION = "screen_plug_pre_provision"
const string MOBILE_GUIDE_SCREEN_PLUG_PROVISIONING = "screen_plug_provisioning"
const string MOBILE_GUIDE_SCREEN_PRODUCT_SELECTION = "screen_product_selection"
const string MOBILE_GUIDE_SCREEN_PROGRESSION_EDUCATION = "screen_progression_education"
const string MOBILE_GUIDE_SCREEN_RESET_SWITCH_SUCCESS = "screen_reset_switch_success"
const string MOBILE_GUIDE_SCREEN_RESTART_PLUG = "screen_restart_plug"
const string MOBILE_GUIDE_SCREEN_ROOM_SELECTION = "screen_room_selection"
const string MOBILE_GUIDE_SCREEN_SAFETY_BREAKER_CHECK = "screen_safety_breaker_check"
const string MOBILE_GUIDE_SCREEN_SAFETY_CHECK = "screen_safety_check"
const string MOBILE_GUIDE_SCREEN_SKIP_INSTALL = "screen_skip_install"
const string MOBILE_GUIDE_SCREEN_SWITCH_PROVISIONING = "screen_switch_provisioning"
const string MOBILE_GUIDE_SCREEN_SWITCH_WALLPLATE = "screen_switch_wallplate"
const string MOBILE_GUIDE_SCREEN_TOOLS = "screen_tools"
const string MOBILE_GUIDE_SCREEN_TROUBLESHOOTING_BASE = "screen_troubleshooting_base"
const string MOBILE_GUIDE_SCREEN_USE_EXISTING_CONFIGURATION = "screen_use_existing_configuration"
const string MOBILE_GUIDE_SCREEN_WIRE_PHOTOS = "screen_wire_photos"
const string MOBILE_GUIDE_SCREEN_WIRE_CONTROL_PREFIX = "screen_wire_control_slider_index_display_"

const string MOBILE_GUIDE_SECTION_ADD_DEVICES = "section_add_device"
const string MOBILE_GUIDE_SECTION_COMPATIBILITY = "section_compatibility"
const string MOBILE_GUIDE_SECTION_INSTALLATION_SUCCESS = "section_installation_success"
const string MOBILE_GUIDE_SECTION_TOOLS_AND_SAFETY = "section_tools_and_safety"
const string MOBILE_GUIDE_SECTION_CHECK_WIRING = "section_check_wiring"
const string MOBILE_GUIDE_SECTION_WIRE_PHOTOS = "section_wire_photos"
const string MOBILE_GUIDE_SECTION_INSTALL_BRILLIANT_BASE = "section_install_brilliant_base"
const string MOBILE_GUIDE_SECTION_TEST_BRILLIANT_BASE = "section_test_brilliant_base"
const string MOBILE_GUIDE_SECTION_INSTALL_BRILLIANT_SWITCH = "section_install_brilliant_switch"
const string MOBILE_GUIDE_SECTION_TEST_BRILLIANT_SWITCH = "section_test_brilliant_switch"
const string MOBILE_GUIDE_SECTION_PROVISIONING = "section_provisioning"

const string MOBILE_GUIDE_URL_CONTACT_SUPPORT = "brl://guide/contactSupport"
const string MOBILE_GUIDE_URL_EXIT_CONTROL_CONFIGURATION = "brl://guide/exitControlConfiguration"
const string MOBILE_GUIDE_URL_EXIT_INSTALLATION = "brl://guide/exitInstallation"
const string MOBILE_GUIDE_URL_EXIT_INSTALLATION_NO_FEEDBACK = "brl://guide/exitInstallationNoFeedback"
const string MOBILE_GUIDE_URL_FINISH_SCREEN = "brl://guide/finishScreen"
const string MOBILE_GUIDE_URL_GO_TO_ARCHIVE = "brl://guide/goToArchive"
const string MOBILE_GUIDE_URL_HELP = "brl://guide/help"
const string MOBILE_GUIDE_URL_LIVE_CHAT = "brl://guide/liveChat"
const string MOBILE_GUIDE_URL_MULTIPLE_NEUTRAL_BUNDLES = "brl://guide/multipleNeutralBundles"
const string MOBILE_GUIDE_URL_NEXT = "brl://guide/next"
const string MOBILE_GUIDE_URL_NOT_SURE = "brl://guide/notSure"
const string MOBILE_GUIDE_URL_PRODUCT_SELECTION = "brl://guide/productSelection"
const string MOBILE_GUIDE_URL_RESET = "brl://guide/reset"
const string MOBILE_GUIDE_URL_RESTART_PAGES = "brl://guide/restart_pages"
const string MOBILE_GUIDE_URL_FEEDBACK_SUBMIT = "brl://guide/feedbackSubmit"
const string MOBILE_GUIDE_URL_TRIGGER_HELP_OVERLAY = "brl://guide/triggerHelpOverlay"
const string MOBILE_GUIDE_URL_TRIGGER_VALIDATION = "brl://guide/triggerValidation"

const string MOBILE_SECTION_GROUP_INSTALL_NEW = "section_group_install_new"
const string MOBILE_SECTION_GROUP_PROVISION = "section_group_provision"
const string MOBILE_SECTION_GROUP_TEST = "section_group_test"
const string MOBILE_SECTION_GROUP_UNINSTALL = "section_group_uninstall"

const string MOBILE_GUIDE_CONSTANT_VERTICAL_CHECKBOX_OPTION_DELIMITER = ":"
