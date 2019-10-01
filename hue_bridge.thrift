namespace py thrift_types.hue_bridge
namespace java thrift_types.hue_bridge

// These are constants for APIs on a Hue Bridge.  They have two intended uses (2018 12 11):
//   - construct URLs for requests to the Bridge
//   - _API_NAME consts also serve as HueBridgePeripheral types.
//       this info is stored in the generated peripheral IDs (see hue_bridge_utils.py)

const string HUE_LIGHT_TYPE_NAME = "light"
const string HUE_LIGHT_API_NAME = "lights"
const string HUE_LIGHT_API_ENDPOINT_UPDATE = "state"
const string HUE_GROUP_TYPE_NAME = "group"
const string HUE_GROUP_API_NAME = "groups"
const string HUE_GROUP_API_ENDPOINT_UPDATE = "action"
const string HUE_SCENES_API_NAME = "scenes"
