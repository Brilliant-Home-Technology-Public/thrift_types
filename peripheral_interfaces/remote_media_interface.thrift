namespace py thrift_types.peripheral_interfaces.remote_media_interface
namespace java thrift_types.peripheral_interfaces.remote_media_interface

include "../message_bus.thrift"
include "../remote_media.thrift"
include "peripheral_interface.thrift"


struct RemoteMediaPeripheralInterface {
    1: remote_media.RemoteMediaSessions remote_sessions
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'RemoteMediaPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.REMOTE_MEDIA
}
