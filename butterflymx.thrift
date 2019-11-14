namespace py thrift_types.butterflymx
namespace java thrift_types.butterflymx

const string BUTTERFLYMX_PANEL_ID_PREFIX = "panel"
const string BUTTERFLYMX_BUILDING_ID_PREFIX = "building"

struct BuildingEntryPanels {
  1: list<string> building_entry_panel_ids
}
