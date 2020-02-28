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

const string DOOR_FAULT_NONE = "none"

const string DOOR_COMMAND_OPEN = "open"
const string DOOR_COMMAND_CLOSE = "close"
