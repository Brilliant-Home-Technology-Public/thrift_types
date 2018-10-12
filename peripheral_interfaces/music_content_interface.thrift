namespace py thrift_types.peripheral_interfaces.music_content_interface

include "../music.thrift"
include "peripheral_interface.thrift"

struct MusicContentPeripheralInterface {
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'MusicContentPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.MUSIC_CONTENT,
  'dynamic_variable_prefix': music.MUSIC_PLAYLIST_PREFIX,
  'dynamic_variable_ttype': 'music.Playlist'
}
