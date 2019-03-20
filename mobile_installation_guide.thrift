namespace py thrift_types.mobile_installation_guide
namespace java thrift_types.mobile_installation_guide

enum InstallationDeviceType {
  ONE_GANG = 1
  TWO_GANG = 2
  THREE_GANG = 3
  FOUR_GANG = 4
  BRILLIANT_SWITCH = 5
}
 
struct InstallationGuide {
  1: string version
  2: InstallationDeviceType device_type
  3: string product_sku
  4: list<GuideScreen> screens
}
 
enum GuideOperator {
  EQUAL = 1
  NOT_EQUAL = 2
  IS_SET = 3
  AND = 4 // Evaluates child rules and validation_value of 1 or 0
  OR = 5 // Evaluates child rules and validation value of 1 or 0
}
 
const string GUIDE_RULE_COMPOSITE_IDENTIFIER = "composite_identifier"

struct GuideRule {
  1: GuideOperator rule_operator
  2: string target_identifier
  3: string validation_value
  4: optional GuideOverlay overlay // If present, when rule is FIRST violated the overlay will be presented
  5: optional list<GuideRule> child_rules
}

struct GuideOverlay {
  1: string overlay_identifier
  2: string overlay_title
  3: string overlay_message
  4: optional string overlay_confirm_button_title
  5: optional string overlay_confirm_url
  6: optional string overlay_secondary_button_title
  7: optional string overlay_secondary_button_url
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
 
struct GuidePage {
  1: string identifier
  2: optional string title_override
  3: list<GuideField> fields
  // If confirmTitle is present, a confirm button will display locked to the bottom of the screen
  // If not, the confirm will be taken once all fields have been processed and the last option is selected
  4: optional string confirm_title
  5: optional string underline_button_title
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
}

struct GuideField {
  1: string identifier
  2: GuideFieldType field_type
  3: optional list<GuideOption> options // Options to display
  4: optional string primary_label // Main text for field
  5: optional string secondary_label // Secondary text for field
  6: optional string large_image_url // Primary image for field
  7: optional list<GuideRule> display_rules // Logical statement referencing field identifiers and option values
  8: optional string footer_label // Footer text for field
}
 
struct GuideOption {
  1: string display_name
  2: string option_value 
}
