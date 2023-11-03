namespace py thrift_types.peripheral_interfaces.outlet_interface
namespace java thrift_types.peripheral_interfaces.outlet_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct OutletPeripheralInterface {
    1: bool on
    2: configuration.RoomAssignment room_assignment
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'OutletPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.OUTLET
}
