const string DELIMITER = " "
const string MSG_TYPE_REQ = "req"
const string MSG_TYPE_RESP = "resp"
const string MSG_TYPE_NOTIF = "notif"

enum StatusCode {
  NO_ERROR = 0,
  BAD_ARGS = 1
}

struct StatusResponse {
  1: StatusCode status_code
  2: optional string error_msg
}