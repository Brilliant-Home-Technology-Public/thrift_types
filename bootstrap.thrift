namespace py thrift_types.bootstrap
namespace java thrift_types.bootstrap

const string AUTHENTICATION_TOKEN_HEADER = "X-Brilliant-Auth-Token"
const string AUTHENTICATION_QUERY_PARAM = "Brilliant-Token"

enum BootstrapStatus {
  IDLE = 0,
  SCANNING = 1,
  KNOCKING = 2,
  HOME_BUSY = 3,
  HOME_THROTTLED = 4,
  AUTHENTICATING = 5,
  COMPLETED = 6,
  AUTHENTICATION_FAILED = 7,
}

struct AvailableHome {
  1: string home_id
  2: optional string home_name
  3: i32 num_detected_devices
}

struct AvailableHomes {
  1: list<AvailableHome> homes
}

struct BootstrapParameters {
  1: optional string target_home_id
  2: optional string server_authentication_token
  3: optional map<string, string> wifi_variables
}

struct OutOfBandData {
  1: optional string session_id
  2: optional binary secret_bytes
  3: optional string certificate_fingerprint_base64
  4: optional i64 expiration_timestamp_ms
}
