namespace py thrift_types.peripheral_interfaces.generic_on_off_interface
namespace java thrift_types.peripheral_interfaces.generic_on_off_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct GenericOnOffPeripheralInterface {
  1: bool on
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'GenericOnOffPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.GENERIC_ON_OFF
}
