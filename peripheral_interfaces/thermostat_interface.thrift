namespace py thrift_types.peripheral_interfaces.thermostat_interface
namespace java thrift_types.peripheral_interfaces.thermostat_interface

include "../message_bus.thrift"
include "../thermostat.thrift"
include "peripheral_interface.thrift"

struct ThermostatPeripheralInterface {
  1: i32 target_temperature_f
  2: i32 ambient_temperature_f
  3: i32 min_temperature_f
  4: i32 max_temperature_f
  5: thermostat.ThermostatCapabilities thermostat_capabilities
  6: thermostat.HVACMode hvac_mode
  7: optional thermostat.FanMode fan_mode // Some heaters won't have a fan
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ThermostatPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.THERMOSTAT
}
