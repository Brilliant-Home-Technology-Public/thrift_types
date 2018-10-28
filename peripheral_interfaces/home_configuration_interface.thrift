namespace py thrift_types.peripheral_interfaces.home_configuration_interface
namespace java thrift_types.peripheral_interfaces.home_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "../user.thrift"
include "peripheral_interface.thrift"

struct HomeConfigurationPeripheralInterface {
  1: string name
  2: configuration.Rooms rooms
  3: string thirdparty_discovery_owner
  4: string local_timezone
  5: string passcode
  6: user.User primary_user
  7: bool passcode_enabled
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'HomeConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.HOME_CONFIGURATION
}
