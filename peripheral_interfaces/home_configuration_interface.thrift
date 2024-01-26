namespace py thrift_types.peripheral_interfaces.home_configuration_interface
namespace java thrift_types.peripheral_interfaces.home_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "../user.thrift"
include "../thermostat.thrift"
include "peripheral_interface.thrift"

struct HomeConfigurationPeripheralInterface {
  1: string name
  2: configuration.Rooms rooms
  3: string thirdparty_discovery_owner
  4: string local_timezone
  5: string passcode
  6: user.User primary_user
  7: bool passcode_enabled
  8: optional configuration.Trigger control_software_update_poll_time
  9: optional configuration.Location location
  10: optional bool enable_mobile_configuration_setup
  11: optional bool enable_gangbox_power_updates
  12: optional bool aa_testing_flag
  13: optional bool enable_switch_power_updates
  14: optional bool enable_plug_power_updates
  15: optional thermostat.TemperatureUnits temperature_display_unit = thermostat.TemperatureUnits.FAHRENHEIT
  16: optional bool proxy_alexa_token_refresh
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'HomeConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.HOME_CONFIGURATION
}
