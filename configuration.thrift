namespace py thrift_types.configuration

include "message_bus.thrift"

struct MediaContent {
  1: string url
  2: string content_type
  // TODO include dimensions?
}

// Art Configuration
struct ArtPiece {
  1: string id
  2: optional string url // DEPRECATED, use primary instead
  3: optional string content_type // DEPRECATED use primary instead
  4: optional MediaContent primary
  5: optional list<MediaContent> previews
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

enum ArtDisplayFrequency {
  ALL_THE_TIME = 0,
  SPECIFIC_HOURS = 1,
}

struct HueBridgeCredential {
  1: string ip_address
  2: string username
}

struct HueBridgeCredentials {
  1: map<string, HueBridgeCredential> credentials
}

// Thirdparty Device Configurations

struct PeripheralInfo {
  1: string owner
  2: string name
  3: message_bus.PeripheralType peripheral_type
  // The device id the thirdparty has provided
  4: string thirdparty_device_id
  5: string configuration_peripheral_id
  6: optional map<string, string> configuration_variables
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

struct ExecutedSetVariableRequest {
  1: message_bus.SetVariableResponse set_variable_response
  2: string device_id
  3: string peripheral_name
}

struct ExecutionState {
  1: i64 last_execution_timestamp = 0
  2: list<ExecutedSetVariableRequest> executed_set_variable_requests
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

// Scenes

# WeeklyRecurrigTime is deprecated. We are trying to move toward ExecutionTimeRange instead.
struct WeeklyRecurringTime {
  1: optional list<DayOfWeek> days = []
  2: optional i32 seconds_from_midnight = 0
  3: optional CalendarDay start_day // Inclusive, if none specified starts right meow
  4: optional CalendarDay end_day // Inclusive, if none specified continues forever
}

struct Trigger {
  1: bool enabled
  2: optional WeeklyRecurringTime time_trigger
  3: optional ExecutionTimeRange time_range
}

struct SceneMultiAction {
  1: string id
  2: bool enabled
  3: list<string> rooms
  4: message_bus.PeripheralType peripheral_type
  5: map<string, string> variables
}

struct SceneAction {
  1: string id
  2: bool enabled
  3: string device_id
  4: string peripheral_name
  5: map<string, string> variables
}

struct Scene {
  1: string id
  2: string title
  3: string icon_url
  4: list<SceneAction> actions
  5: list<SceneMultiAction> multi_actions
  6: Trigger trigger
}

// Home Configuration

struct Room {
  1: string id
  2: string name
}

struct Rooms {
  1: map<string, Room> rooms
}

// Wifi
struct WifiCredentials {
  1: string network_name
  2: string passphrase
}


// Device Authorization
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

