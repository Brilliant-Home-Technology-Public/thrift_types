namespace py thrift_types.peripheral_interfaces.climate_sensor_interface
namespace java thrift_types.peripheral_interfaces.climate_sensor_interface

include "../climate_sensor.thrift"
include "../configuration.thrift"
include "../message_bus.thrift"
include "../battery.thrift"
include "peripheral_interface.thrift"

struct ClimateSensorPeripheralInterface {
  1: configuration.RoomAssignment room_assignment
  2: i32 ambient_temperature_f
  3: double ambient_humidity // percentage in interval [0, 100]
  4: climate_sensor.ClimateAlarms climate_alarms
  5: optional battery.BatteryStatus battery_status
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ClimateSensorPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.CLIMATE_SENSOR
}
