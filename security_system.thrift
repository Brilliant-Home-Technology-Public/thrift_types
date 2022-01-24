namespace py thrift_types.security_system
namespace java thrift_types.security_system

enum SystemMode {
  UNKNOWN = 0
  DISARMED = 1
  ARMED_STAY = 2
  ARMED_AWAY = 3
  ARMED_NIGHT = 4
  DISABLED = 5
  DISARMING = 6
  DISARMED_NOT_READY = 7
}

struct SystemCapabilities {
  1: list<SystemMode> supported_system_modes
}
