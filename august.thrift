namespace py thrift_types.august
namespace java thrift_types.august

const string AUGUST_API_PREFIX = "https://api-production.august.com"

enum NotificationType {
	UNKNOWN = 0,
	OPERATION = 1,
	CONFIGURATION = 2,
	BATTERY = 3,
	SYSTEM = 4,
	STATUS = 5,
}

struct AugustNotification {
	1: NotificationType type
	2: string event
	3: i64 timestamp
	4: optional string details
}
