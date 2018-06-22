namespace py thrift_types.nest
namespace java thrift_types.nest

const string NEST_API_BASE = "https://developer-api.nest.com"

struct ThermostatIds {
	1: list<string> thermostat_ids
}

enum HomeAwayStatus {
	UNKNOWN = 0,
	HOME = 1,
	AWAY = 2,
}