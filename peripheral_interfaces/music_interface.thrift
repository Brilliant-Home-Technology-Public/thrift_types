namespace py thrift_types.peripheral_interfaces.music_interface

include "../message_bus.thrift"
include "../music.thrift"
include "peripheral_interface.thrift"

struct MusicPeripheralInterface {
  1: bool playing
  2: music.MusicTrack current_track_info
  3: music.PlayQueue play_queue
  4: i32 queue_position
  5: i32 volume
  6: music.Playlists playlists
  7: music.Playlists favorites
  8: i32 position
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'MusicPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.MUSIC
}
