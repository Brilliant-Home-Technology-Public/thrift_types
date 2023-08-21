namespace py thrift_types.water_shutoff_valve
namespace java thrift_types.water_shutoff_valve

enum WaterShutoffValveStatus {
	UNKNOWN = 0
	OPEN = 1
	CLOSE = 2
	OPEN_FAILED = 3
	CLOSE_FAILED = 4
}

enum WaterLeakStatus {
	NO_LEAK = 0,
	LEAK_DETECTED = 1,
	NOT_AVAILABLE = 2,
	ERROR = 3,
}