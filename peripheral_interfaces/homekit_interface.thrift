namespace py thrift_types.peripheral_interfaces.homekit_interface
namespace java thrift_types.peripheral_interfaces.homekit_interface

include "../homekit.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct HomeKitPeripheralInterface {
  2: string setup_uri
  3: string setup_id
  4: string setup_code
  5: bool reset
  6: bool paired
  7: string accessory_name
  8: bool adk_enabled
  10: bool restart
  11: bool token_exists
  12: optional homekit.ExposedFixtures exposed_fixtures
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'HomeKitPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.HOMEKIT,
}
