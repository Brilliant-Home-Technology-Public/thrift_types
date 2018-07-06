namespace py thrift_types.peripheral_interfaces.thermostat_interface
namespace java thrift_types.peripheral_interfaces.thermostat_interface

include "../message_bus.thrift"
include "../thermostat.thrift"
include "peripheral_interface.thrift"

struct ThermostatPeripheralInterface {
  // both target_temperature_low_f and target_temperature_high_f should be
  // used mutually exclusively with target_temperature_f (depending on hvac_mode)
  1: optional i32 target_temperature_f
  2: i32 ambient_temperature_f
  3: thermostat.ThermostatCapabilities thermostat_capabilities
  4: thermostat.HVACMode hvac_mode
  5: optional thermostat.FanMode fan_mode // Some heaters won't have a fan
  6: optional i32 target_temperature_low_f
  7: optional i32 target_temperature_high_f
  8: thermostat.TemperatureRanges temperature_ranges
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ThermostatPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.THERMOSTAT
}
