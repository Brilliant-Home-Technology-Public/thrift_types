namespace py thrift_types.peripheral_interfaces.music_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "../music.thrift"
include "peripheral_interface.thrift"

struct MusicPeripheralInterface {
  1: bool playing
  2: music.MusicTrack current_track_info
  3: bool can_skip       // can skip forward from current track
  4: bool skip           // skip forward from current track
  5: bool can_skip_back  // can skip backward from current track
  6: bool skip_back      // skip backward from current track
  7: i32 track_position  // position within current track
  8: i32 volume
  9: bool volume_fixed   // if volume can be adjusted or not
  10: string play_uri    // initiate playback of a favorite
  11: configuration.RoomAssignment room_assignment
  12: music.Speakers speakers
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'MusicPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.MUSIC
}
