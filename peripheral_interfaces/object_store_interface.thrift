namespace py thrift_types.peripheral_interfaces.object_store_interface
namespace java thrift_types.peripheral_interfaces.object_store_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ObjectStorePeripheralInterface {
    1: string listen_address
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ObjectStorePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.OBJECT_STORE,
}
