namespace py thrift_types.climate_sensor
namespace java thrift_types.climate_sensor

enum ClimateAlarmType {
  UNKNOWN = 0,
  LOW_TEMPERATURE = 1,
  HIGH_TEMPERATURE = 2,
  LOW_HUMIDITY = 3,
  HIGH_HUMIDITY = 4,
  WATER_DETECTED = 5,
  TEMPERATURE_SENSOR_FAILURE = 6,
  HUMIDITY_SENSOR_FAILURE = 7,
}

struct ClimateAlarms {
  1: list<ClimateAlarmType> climate_alarms
}
