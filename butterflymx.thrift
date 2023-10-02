namespace py thrift_types.butterflymx
namespace java thrift_types.butterflymx

const string BUTTERFLYMX_PANEL_ID_PREFIX = "panel"
const string BUTTERFLYMX_BUILDING_ID_PREFIX = "building"

// Event keys
const string EVENT_KEY_CALL_GUID = "butterflymx:call_guid"
const string EVENT_KEY_CALL_STATUS = "butterflymx:call_status"
const string EVENT_KEY_USER_ID = "butterflymx:user_id"

// Status enum values
// See https://apidocs.butterflymx.com/core/v3/production/index.html#current-user-status
const string CALL_STATUS_INITIALIZING = "initializing"
const string CALL_STATUS_CANCELED = "canceled"
const string CALL_STATUS_CONNECTING = "connecting_sip"
const string CALL_STATUS_TIMEOUT = "timeout_online_signal"
const string CALL_STATUS_REJECTED = "rejected"
const string CALL_STATUS_OPENED_DOOR = "opened_door"

struct BuildingEntryPanels {
  1: list<string> building_entry_panel_ids
}
