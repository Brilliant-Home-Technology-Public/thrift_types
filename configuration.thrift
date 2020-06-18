namespace py thrift_types.configuration
namespace java thrift_types.configuration

include "message_bus.thrift"
include "wifi.thrift"

struct MediaContent {
  1: string url
  2: string content_type
  // TODO include dimensions?
}

// Art Configuration

const string ART_CONFIG_VARIABLE_PREFIX = "library:"

const string USER_CUSTOM_LIBRARY_ID = "library:custom_art"
const string FEATURED_LIBRARY_ID = "library:featured"
const string DEMO_LIBRARY_ID = "library:demo_album"

struct ArtPiece {
  1: string id
  4: optional MediaContent primary
  5: optional list<MediaContent> previews
  6: optional i64 created_timestamp
}

struct ArtLibrary {
  1: string id
  2: string title
  3: list<ArtPiece> art_pieces
}

struct ArtLibraryConfig {
  1: string library_id
  2: bool enabled
  3: list<string> disabled_art_pieces
}

// Cap touch configuration

const string CAP_TOUCH_CONFIG_VARIABLE_PREFIX = "slider_config:"

struct CapTouchSliderConfig {
  1: i32 index
  2: string device_id
  3: string peripheral_id
  4: optional bool disable_tap
  5: optional string double_tap_scene_id
}

// Gesture configuration

enum GestureType {
  UNKNOWN = 0,
  SINGLE = 1, # Single finger swipes and drags
  TWO = 2, # Multi finger swipes
}

struct GestureConfig {
  1: GestureType gesture_type
  2: optional string device_id # Empty string means the current device. None means all devices.
  3: optional string peripheral_id
}

struct GestureConfigs {
  1: map<GestureType, list<GestureConfig>> gesture_configs
}

struct HueBridgeCredential {
  1: string ip_address
  2: string username
}

struct HueBridgeCredentials {
  1: map<string, HueBridgeCredential> credentials
}

enum SomfyAPIType {
  UNKNOWN = 0,
  MYLINK = 1,
  RTS = 2,
  SDN = 3,
  SDN_PLUS = 4,
}

struct SomfyTarget {
  1: string display_name
  2: bool group
}

struct SomfyCredential {
  1: string ip_address
  2: optional string auth
  3: map<string, SomfyTarget> available_targets
  4: SomfyAPIType api_type
  5: optional string user
  6: optional string password
}

struct SomfyCredentials {
  1: map<string, SomfyCredential> credentials
}

// Thirdparty Device Configurations

struct PeripheralInfo {
  1: string owner
  2: string name
  3: message_bus.PeripheralType peripheral_type
  // The device id the thirdparty has provided
  4: optional string thirdparty_device_id
  5: string configuration_peripheral_id
  6: optional map<string, string> configuration_variables
  7: optional bool stubbed
  8: optional bool hidden // if true, do not create peripheral and do not show as normal device
  9: optional bool unrecognized // true if device is no longer being discovered
  10: optional string default_display_name
}

enum DayOfWeek {
  SUNDAY = 0,
  MONDAY = 1,
  TUESDAY = 2,
  WEDNESDAY = 3,
  THURSDAY = 4,
  FRIDAY = 5,
  SATURDAY = 6,
}

enum Month {
  JAN = 1,
  FEB = 2,
  MAR = 3,
  APR = 4,
  MAY = 5,
  JUN = 6,
  JUL = 7,
  AUG = 8,
  SEP = 9,
  OCT = 10,
  NOV = 11,
  DEC = 12,
}

struct CalendarDay {
  1: i32 day_of_month // 1 indexed
  2: Month month // 1 indexed
  3: i32 year
}

// Execution

const string EXECUTION_STATE_PREFIX = "execution_state:"
const string SCENE_ACTIVATION_HANDLER_IDENTIFIER = "scene_activation_handler"
const string SCENE_EXECUTION_HANDLER_IDENTIFIER = "scene_execution_handler"
const string STATE_CONFIG_ACTIVATION_HANDLER_IDENTIFIER = "state_config_activation_handler"
const string STATE_CONFIG_EXECUTION_HANDLER_IDENTIFIER = "state_config_execution_handler"
const string ART_EXECUTION_HANDLER_IDENTIFIER = "art_execution_handler"
const string LIGHT_EXECUTION_HANDLER_IDENTIFIER = "light_execution_handler"
const string AUTO_UPDATE_HANDLER_IDENTIFIER = "auto_update_handler"
const string ALARM_EXECUTION_HANDLER_IDENTIFIER = "alarm_execution_handler"
const string DEMO_EXECUTION_HANDLER_IDENTIFIER = "demo_execution_handler"
const string NOTIFICATION_EXECUTION_HANDLER_IDENTIFIER = "notification_execution_handler"

struct ExecutedSetVariableRequest {
  1: message_bus.SetVariableResponse set_variable_response
  2: string device_id
  3: string peripheral_name
}

struct ExecutionState {
  1: i64 last_execution_timestamp = 0
  2: list<ExecutedSetVariableRequest> executed_set_variable_requests
  3: optional bool in_progress // DEPRECATED
}

struct DailyTimeRange {
  1: i32 start_seconds_from_midnight = 0 // Inclusive
  2: i32 end_seconds_from_midnight = 0 // Inclusive
}

struct ExecutionTimeRange {
  1: optional CalendarDay start_day // Inclusive, if none specified starts right meow
  2: optional CalendarDay end_day // Inclusive, if none specified continues forever
  3: list<DayOfWeek> valid_days_of_week = []
  4: list<DailyTimeRange> valid_time_ranges = []
}

// Motion Control Configuration

const string LIGHT_MOTION_CONFIG_VARIABLE_PREFIX = "light_config:"

struct LightMotionConfig {
  1: string device_id
  2: string peripheral_id
  3: optional bool trigger_on
  4: optional bool trigger_off
  5: optional i32 trigger_off_timeout_sec
  6: optional ExecutionTimeRange time_range // If None, motion triggers are always enabled
}

// Scenes

const string SCENE_ALL_ON_IDENTIFIER = "all_on"
const string SCENE_ALL_OFF_IDENTIFIER = "all_off"

const list<string> DEFAULT_SCENE_IDS = [
    SCENE_ALL_ON_IDENTIFIER,
    SCENE_ALL_OFF_IDENTIFIER,
]

enum Validity {
   UNKNOWN = 0,
   VALID = 1,
   DEVICE_OFFLINE = 2,
   DEVICE_RECONFIGURED = 3,
   DEVICE_DELETED = 4,
   DEVICE_MODE_INCOMPATIBLE = 5,
   DEVICE_ROOMLESS = 6,
   THIRDPARTY_SCENE_UNRECOGNIZED = 7,
}

struct SceneValidityStates {
  # A mapping of scene id -> scene action id -> validity state
  1: map<string, map<string, Validity>> scene_validity_states
}

# WeeklyRecurrigTime is deprecated. We are trying to move toward ExecutionTimeRange instead.
struct WeeklyRecurringTime {
  1: optional list<DayOfWeek> days = []
  2: optional i32 seconds_from_midnight = 0
  3: optional CalendarDay start_day // Inclusive, if none specified starts right meow
  4: optional CalendarDay end_day // Inclusive, if none specified continues forever
}

struct Trigger {
  1: bool enabled
  3: optional ExecutionTimeRange time_range
}

struct SceneMultiAction {
  1: string id
  2: bool enabled
  3: list<string> rooms
  4: message_bus.PeripheralType peripheral_type
  5: map<string, string> variables
  6: optional map<string, string> expected_variable_states
  7: optional map<string, string> excluded_variable_states
}

struct SceneAction {
  1: string id
  2: bool enabled
  3: string device_id
  4: string peripheral_name
  5: map<string, string> variables
  6: optional string name
}

struct Scene {
  1: string id
  2: string title
  3: string icon_url
  4: list<SceneAction> actions
  5: list<SceneMultiAction> multi_actions
  6: Trigger trigger
  7: optional bool editable = true
  8: optional bool should_retry = false
  9: optional bool hidden = false
}

const string THIRDPARTY_SCENE_VARIABLE_PREFIX = "thirdparty_scene:"

struct ThirdpartyScene {
  1: string id
  2: string name
  3: string thirdparty_identifier
  4: optional string peripheral_name
  5: optional string secondary_label
}

struct ThirdpartySceneList {
  1: list<ThirdpartyScene> thirdparty_scenes
}

// Alarm configuration

const string ALARM_CONFIG_VARIABLE_PREFIX = "alarm:"

struct AlarmConfig {
  1: string id
  2: string title
  3: i32 volume
  4: ExecutionTimeRange time_range
}

// Home Configuration

struct Room {
  1: string id
  2: string name
}

struct Rooms {
  1: map<string, Room> rooms
}

struct Location {
  1: string country_code
  2: string postal_code
  3: string city // might not technically be a city, but is of a similar scale
  4: string state_abbreviation
  5: double latitude
  6: double longitude
}

// Room assignment

struct RoomAssignment {
  1: optional list<string> room_ids = []
}

// Wifi
struct WifiCredentials {
  1: string network_name
  2: string passphrase
  3: optional wifi.SecurityType security // required for hidden networks
  4: optional bool force_disable_ipv6
}


// Device Authorization
enum BrilliantDeviceType {
  BRILLIANT_CONTROL = 1,
  MOBILE_APP = 2,
}

enum DeviceAuthorizationStatus {
  KNOCKED = 1  // Awaiting user confirmation to proceed
  READY = 2 // Can accept a commitment/secret
  ACCEPTED = 3
  REJECTED = 4 // Soft failure; can reset and try again
  BANNED = 5 // Hard failure; this device cannot reset
}

struct DeviceAuthorizationState {
  1: DeviceAuthorizationStatus status
  2: string device_id
  3: string device_certificate_fingerprint
  4: optional string display_name
  5: i32 authentication_code
  6: string server_commitment_secret
  // Following two fields are populated once commitment received from new device
  7: optional string client_authentication_commitment
  9: i16 num_attempts
}

struct OAuthConfiguration {
  1: string client_name
  // Used to either encrypt or sign access tokens and authorization grants sent to a client
  2: string secret
  // A one-time use code granted to a client, to be exchanged for access and refresh token
  3: string authorization_grant_code
}

enum OAuthStatus {
  NEVER_ATTEMPTED = 0
  AUTHORIZED = 1
  DEAUTHORIZED = 2 // We have received a 401 Unauthorized error
}

struct ThirdpartyIntegrationState {
  1: OAuthStatus oauth_status
}

struct HueBridgeIntegrationStates {
  1: map<string, ThirdpartyIntegrationState> integration_states
}

struct SomfyIntegrationStates {
  1: map<string, ThirdpartyIntegrationState> integration_states
}

// switch-ui HomeScreen Pinned Options Config

enum PinType {
  NO_SHORTCUT = 0,
  LIGHTS = 1,
  MUSIC = 2,
  CLIMATE = 3,
  PINNED_SCENE = 4,
  INTERCOM = 5,
  SCENES = 6,
  DEVICES = 7,
  SETTINGS = 8,
  ALEXA_MUTE = 9,
  HOME = 10,
  SHADES = 11,
  ALARMS = 12,
  CAMERAS = 13,
  LOCKS = 14,
  DOORBELLS = 15,
  ADD_DEVICE = 16,
  HOMEKIT = 17,
  BLANK = 18,
}

struct Pin {
  1: PinType type
  2: optional string id
}

struct PinnedOptionsConfig {
  1: list<string> scene_ids = []
}

struct HomeScreenConfig {
  1: map<i32, Pin> pin_order
}

// Intercom settings

struct IntercomParameters {
  1: optional i32 audio_stream_id
  2: optional i32 video_stream_id
  3: optional string encryption_key
}

// Groups

// Uniquely identifies a peripheral within a home
struct GroupedPeripheralID {
  1: string device_id
  2: string peripheral_id
}

struct PeripheralGroup {
  1: list<GroupedPeripheralID> peripherals
}

// Peripheral State Configuration

const string STATE_CONFIG_VARIABLE_PREFIX = "state_config:"

struct PeripheralConfiguration {
  1: i32 peripheral_configuration_template_id // Maps to an ENUM, expected to be unique per peripheral type
  2: optional map<string, string> additional_variable_configuration
}

struct UniquePeripheralID {
  1: string device_id
  2: string peripheral_id
}

struct PeripheralConfigurationAssignment {
  1: UniquePeripheralID unique_peripheral_id
  3: PeripheralConfiguration peripheral_configuration
}

struct StateConfig {
  1: string id
  2: string title
  3: list <PeripheralConfigurationAssignment> peripheral_configuration_assignments
  4: optional Trigger time_trigger
}

enum ConfigurationTemplateID {
  UNKNOWN = 0,
  SHOWING = 1,
  VACANT = 2,
  CDK = 3,
}
