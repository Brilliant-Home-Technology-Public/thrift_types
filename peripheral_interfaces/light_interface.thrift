namespace py thrift_types.peripheral_interfaces.light_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct LightPeripheralInterface {
  1: bool on
  2: bool dimmable
  3: i32 intensity
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'LightPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.LIGHT
}
