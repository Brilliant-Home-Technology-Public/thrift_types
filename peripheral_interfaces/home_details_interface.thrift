namespace py thrift_types.peripheral_interfaces.home_details_interface
namespace java thrift_types.peripheral_interfaces.home_details_interface

include "../message_bus.thrift"
include "../user.thrift"
include "peripheral_interface.thrift"

struct HomeDetailsPeripheralInterface {
  1: user.Users users
}

const peripheral_interface.PeripheralInterface peripheral = {
  "peripheral_interface_name": "HomeDetailsPeripheralInterface",
  "peripheral_type": message_bus.PeripheralType.HOME_DETAILS,
}
