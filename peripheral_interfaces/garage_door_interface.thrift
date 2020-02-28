namespace py thrift_types.peripheral_interfaces.garage_door_interface
namespace java thrift_types.peripheral_interfaces.garage_door_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct GarageDoorPeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
  3: optional message_bus.Event event
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'GarageDoorPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.GARAGE_DOOR,
}
