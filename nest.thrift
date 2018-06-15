namespace py thrift_types.nest
namespace java thrift_types.nest

struct ThermostatIds {
	1: list<string> thermostat_ids
}

enum HomeAwayStatus {
	HOME = 0,
	AWAY = 1,
}