namespace py thrift_types.peripheral_interfaces.camera_interface
namespace java thrift_types.peripheral_interfaces.camera_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"
include "../remote_media.thrift"

struct CameraPeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
  3: remote_media.RemoteMediaSessions remote_sessions
  4: remote_media.RemoteStreamingConfiguration streaming_configuration
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'CameraPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.CAMERA,
  'dynamic_variable_prefix': remote_media.LIVE_VIEW_SESSION_PREFIX,
  'dynamic_variable_ttype': 'remote_media.RemoteMediaSession'
}
