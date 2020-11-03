namespace py thrift_types.peripheral_interfaces.outlet_interface
namespace java thrift_types.peripheral_interfaces.outlet_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct OutletPeripheralInterface {
    1: bool on
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'OutletPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.OUTLET
}
