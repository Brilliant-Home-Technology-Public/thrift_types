namespace py thrift_types.peripheral_interfaces.homekit_interface
namespace java thrift_types.peripheral_interfaces.homekit_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct HomeKitPeripheralInterface {
  1: bool enabled
  2: string setup_uri
  3: string setup_id
  4: string setup_code
  5: bool reset
  6: bool paired
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'HomeKitPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.HOMEKIT,
}
