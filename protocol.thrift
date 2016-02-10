const string DELIMITER = " "
const string MSG_TYPE_REQ = "req"
const string MSG_TYPE_RESP = "resp"
const string MSG_TYPE_NOTIF = "notif"

enum StatusCode {
  NO_ERROR = 0,
  TIMEOUT = 1,
  GENERAL_ERROR = 2,
  KEY_ERROR = 3,
  PERMISSION_ERROR = 4,
  BAD_ARGS_ERROR = 5,
}

struct StatusResponse {
  1: StatusCode status_code
  2: optional string error_msg
}