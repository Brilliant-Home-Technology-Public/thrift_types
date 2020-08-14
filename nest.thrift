namespace py thrift_types.nest
namespace java thrift_types.nest

const string NEST_API_BASE = "https://developer-api.nest.com"
// Required min difference between heat and cool temps in heat-cool mode
const i32 HEAT_COOL_MIN_DELTA = 3
const string NEST_DEMO_ACCESS_TOKEN = "NEST_DEMO_ACCESS_TOKEN"
const i32 GOOGLE_NEST_SUPPORT_MIN_API_VERSION = 2

struct ThermostatIds {
	1: list<string> thermostat_ids
}
