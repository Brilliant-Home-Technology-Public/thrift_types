namespace py thrift_types.genie
namespace java thrift_types.genie

// Event keys
const string EVENT_KEY_DOOR_STATUS = "genie:door_status"
const string EVENT_KEY_LINK_STATUS = "genie:link_status"
const string EVENT_KEY_DEVICE_STATUS = "genie:device_status"
const string EVENT_KEY_FAULT = "genie:fault"

// These are constants for the Genie API
// https://brillianthome.atlassian.net/wiki/spaces/TP/pages/193429539/Genie+API

const string DOOR_STATUS_OPEN = "open"
const string DOOR_STATUS_OPENING = "opening"
const string DOOR_STATUS_CLOSED = "closed"
const string DOOR_STATUS_CLOSING = "closing"
const string DOOR_STATUS_UNKNOWN = "unknown"
const string DOOR_STATUS_TIMEOUT_OPENING = "timeout_opening"
const string DOOR_STATUS_TIMEOUT_CLOSING = "timeout_closing"
const map<i32, string> DOOR_STATUS_ENUM_TO_STRING = {
     0: DOOR_STATUS_UNKNOWN,
     1: DOOR_STATUS_OPEN,
     2: DOOR_STATUS_OPENING,
     3: DOOR_STATUS_TIMEOUT_OPENING,
     4: DOOR_STATUS_CLOSED,
     5: DOOR_STATUS_CLOSING,
     6: DOOR_STATUS_TIMEOUT_CLOSING,
}

const string DOOR_LINK_STATUS_UNKNOWN = "unknown"
const string DOOR_LINK_STATUS_NOT_CONFIGURED = "not_config"
const string DOOR_LINK_STATUS_PAIRED = "paired"
const string DOOR_LINK_STATUS_CONNECTED = "connected"
const map<i32, string> DOOR_LINK_STATUS_ENUM_TO_STRING = {
     0: DOOR_LINK_STATUS_UNKNOWN,
     1: DOOR_LINK_STATUS_NOT_CONFIGURED,
     2: DOOR_LINK_STATUS_PAIRED,
     3: DOOR_LINK_STATUS_CONNECTED,
}

const string DOOR_FAULT_NONE = "none"
const string DOOR_FAULT_UL_LOCKOUT = "ul_lockout"
const string DOOR_FAULT_MOVE_ABORT = "move_abort"
const string DOOR_FAULT_UNKNOWN = "unknown"
const map<i32, string> DOOR_FAULT_ENUM_TO_STRING = {
     0: DOOR_FAULT_NONE,
     1: DOOR_FAULT_UL_LOCKOUT,
     2: DOOR_FAULT_MOVE_ABORT,
     3: DOOR_FAULT_UNKNOWN,
}

const string DEVICE_STATUS_OFFLINE = "offline"
const string DEVICE_STATUS_ONLINE = "online"
const map<i32, string> DEVICE_STATUS_ENUM_TO_STRING = {
     0: DEVICE_STATUS_OFFLINE,
     1: DEVICE_STATUS_ONLINE,
}

const string DOOR_COMMAND_OPEN = "open"
const string DOOR_COMMAND_CLOSE = "close"
