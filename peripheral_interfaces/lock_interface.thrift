namespace py thrift_types.peripheral_interfaces.lock_interface
namespace java thrift_types.peripheral_interfaces.lock_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct LockPeripheralInterface {
  1: bool locked
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'LockPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.LOCK
}
