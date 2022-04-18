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
  FIRE_ALARM = 8
  CARBON_MONOXIDE_ALARM = 9
  MEDICAL_ALARM = 10
  INTRUSION_ALARM = 11
  ARMED_AWAY_BYPASS = 12
  ARMED_HOME_BYPASS = 13
  POLICE_ALARM = 14
  DISARMED_BYPASS = 15
}

enum SensorStatus {
  NORMAL = 1
  BYPASSED = 2
  FAULT = 3
  TROUBLE = 4
  FAULT_TROUBLE = 5
  TAMPER = 6
  SUPERVISION = 7
  LOW_BATTERY = 8
  ALARM = 9
}

struct SystemCapabilities {
  1: list<SystemMode> supported_system_modes
}

struct Sensor {
  1: string name
  2: string id
  3: list<SensorStatus> status
}

struct Sensors {
  1: list<Sensor> sensors
}
