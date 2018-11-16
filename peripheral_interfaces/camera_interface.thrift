namespace py thrift_types.peripheral_interfaces.camera_interface
namespace java thrift_types.peripheral_interfaces.camera_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct CameraPeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'CameraPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.CAMERA,
}
