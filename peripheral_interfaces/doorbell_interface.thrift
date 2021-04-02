namespace py thrift_types.peripheral_interfaces.doorbell_interface
namespace java thrift_types.peripheral_interfaces.doorbell_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"
include "../remote_media.thrift"

struct DoorbellPeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
  3: remote_media.RemoteMediaSessions remote_sessions
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'DoorbellPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.DOORBELL,
  'dynamic_variable_prefix': remote_media.LIVE_VIEW_SESSION_PREFIX,
  'dynamic_variable_ttype': 'remote_media.RemoteMediaSession'
}
