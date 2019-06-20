namespace py thrift_types.peripheral_interfaces.music_library_interface
namespace java thrift_types.peripheral_interfaces.music_library_interface

include "../message_bus.thrift"
include "../music.thrift"
include "peripheral_interface.thrift"

struct MusicLibraryPeripheralInterface {
  1: music.Playlists favorites
  2: music.Playlists playlists
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'MusicLibraryPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.MUSIC_LIBRARY
}
