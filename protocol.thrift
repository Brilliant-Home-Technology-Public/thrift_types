namespace py thrift_types.protocol

const string DELIMITER = " "
const string MSG_TYPE_REQ = "req"
const string MSG_TYPE_RESP = "resp"
const string MSG_TYPE_NOTIF = "notif"


enum MessageType {
  REQUEST = 0,
  RESPONSE = 1,
  HELLO = 2,
}

enum SerializationProtocol {
  NONE = 0,
  BASE64_THRIFT_BINARY = 1,
}

enum StatusCode {
  NO_ERROR = 0,
  TIMEOUT = 1,
  GENERAL_ERROR = 2,
  BAD_ARGS_ERROR = 3,
  DOES_NOT_EXIST_ERROR = 4,
  PERMISSION_ERROR = 5,
  CONNECTION_ERROR = 6,
}


struct StatusResponse {
  1: StatusCode status_code
  2: optional string error_msg
}

struct Request {
  1: string command,
  2: string args_serialized
  3: bool is_oneway = false
}

struct Response {
  1: StatusResponse status,
  2: optional string result_serialized /* IE: serialized message_bus.ResponseResult */
}

struct Hello {
  1: string name
  2: optional string domain
  3: optional list<string> aliases
}

union MessageBodyUnion {
  1: Request request
  2: Response response
  3: Hello hello
}

struct Message {
  1: MessageType message_type,
  2: i64 sequence_number,
  3: MessageBodyUnion body_union
}

struct TLSInfo {
  1: string peer_common_name
  2: bool is_validated
  3: string peer_certificate_fingerprint // Base64-encoded sha256 hash
}

struct RequestContext {
  1: Hello peer_hello
  2: optional TLSInfo tls_info
  3: SerializationProtocol serialization_protocol
}
