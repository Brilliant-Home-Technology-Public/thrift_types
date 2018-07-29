namespace py thrift_types.peripheral_interfaces.shade_interface
namespace java thrift_types.peripheral_interfaces.shade_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ShadePeripheralInterface {
  // Whether the shade can be set at intermediate
  // positions or must be either all up or all down
  1: bool continous
  2: i32 position
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ShadePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SHADE,
}
