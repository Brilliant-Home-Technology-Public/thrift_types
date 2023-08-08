namespace py thrift_types.peripheral_interfaces.thermostat_interface
namespace java thrift_types.peripheral_interfaces.thermostat_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "../thermostat.thrift"
include "peripheral_interface.thrift"

struct ThermostatPeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
  // both target_temperature_low_f and target_temperature_high_f should be
  // used mutually exclusively with target_temperature_f (depending on hvac_mode)
  3: optional i32 target_temperature_f
  4: i32 ambient_temperature_f
  5: thermostat.ThermostatCapabilities thermostat_capabilities
  6: thermostat.HVACMode hvac_mode
  7: optional thermostat.FanMode fan_mode // Some heaters won't have a fan
  8: optional i32 target_temperature_low_f
  9: optional i32 target_temperature_high_f
  10: thermostat.TemperatureRanges temperature_ranges
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ThermostatPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.THERMOSTAT
}
