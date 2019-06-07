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
}

struct InstallationGuide {
  1: string version
  2: InstallationDeviceType device_type
  3: string product_sku
  4: list<GuideSection> sections
}

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

const string MOBILE_GUIDE_PARAM_KEY_ARTICLE_ID = "article_id"

const string MOBILE_GUIDE_SCREEN_BARCODE = "screen_barcode_scan"
const string MOBILE_GUIDE_SCREEN_COMPLETE_SETUP = "screen_complete_setup"
const string MOBILE_GUIDE_SCREEN_FEEDBACK_FORM = "screen_feedback_form"
const string MOBILE_GUIDE_SCREEN_INSTALLATION_SUCCESS = "screen_installation_success"
const string MOBILE_GUIDE_SCREEN_OVERVIEW = "screen_overview"
const string MOBILE_GUIDE_SCREEN_PRODUCT_SELECTION = "screen_product_selection"
const string MOBILE_GUIDE_SCREEN_SAFETY_CHECK = "screen_safety_check"
const string MOBILE_GUIDE_SCREEN_WIRE_PHOTOS = "screen_wire_photos"

const string MOBILE_GUIDE_SECTION_ADD_DEVICES = "section_add_device"
const string MOBILE_GUIDE_SECTION_INSTALLATION_SUCCESS = "section_installation_success"
const string MOBILE_GUIDE_SECTION_WIRE_PHOTOS = "section_wire_photos"

const string MOBILE_GUIDE_FIELD_DEVICE_ID = "field_device_id"
const string MOBILE_GUIDE_FIELD_PRODUCT_SKU = "field_product_sku"
const string MOBILE_GUIDE_FIELD_PRODUCT_TYPE = "field_product_type"
const string MOBILE_GUIDE_FIELD_VERSION = "field_version"

const string MOBILE_GUIDE_OPTION_NOT_SURE = "not_sure"

const string MOBILE_GUIDE_OVERLAY_TOOLS_WARNING = "overlay_tools_warning"

