namespace py thrift_types.peripheral_interfaces.thermostat_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ThermostatPeripheralInterface {
  1: i32 target_temperature_f
  2: i32 ambient_temperature_f
  4: i32 min_temperature_f
  5: i32 max_temperature_f
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ThermostatPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.THERMOSTAT
}
