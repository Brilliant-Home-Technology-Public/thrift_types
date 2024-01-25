namespace py thrift_types.peripheral_interfaces.offline_lock_interface
namespace java thrift_types.peripheral_interfaces.offline_lock_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct OfflineLockPeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'OfflineLockPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.OFFLINE_LOCK
}
