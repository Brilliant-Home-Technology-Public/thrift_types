namespace py thrift_types.tplink
namespace java thrift_types.tplink

const string TPLINK_API_PREFIX = "https://external-api.tplinkra.com/v1/"
const list<string> model_specific_icons = [
  "HS100",
  "HS103",
  "HS105",
  "HS107",
  "HS110",
  "HS200",
  "HS210",
  "HS220",
  "KL100",
  "KL200",
  "KL430",
  "KP200",
  "KP300",
  "KP303",
  "KP400",
  "LB100",
  "LB200"
]
const string default_light_icon = "KL100"
const string default_switch_icon = "HS200"
const string default_outlet_icon = "HS103"

// Event keys
const string EVENT_KEY_POWERED = "tplink:powered"
const string EVENT_KEY_BRIGHTNESS = "tplink:brightness"
const string EVENT_KEY_COLOR_TEMPERATURE = "tplink:color_temperature"
const string EVENT_KEY_COLOR = "tplink:color"
