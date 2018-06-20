namespace py thrift_types.peripheral_interfaces.music_interface_v2

include "../message_bus.thrift"
include "../music.thrift"
include "peripheral_interface.thrift"

// TODO (Ananda): Merge with MusicPeripheralInterface once Sonos migration complete
struct MusicPeripheralInterfaceV2 {
  1: bool playing
  2: music.MusicTrack current_track_info
  3: bool can_skip       // can skip forward from current track
  4: bool skip           // skip forward from current track
  5: bool can_skip_back  // can skip backward from current track
  6: bool skip_back      // skip backward from current track
  7: i32 track_position  // position within current track
  8: i32 volume
  9: string play_uri    // initiate playback of a favorite
  10: music.Playlists favorites
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'MusicPeripheralInterfaceV2',
  'peripheral_type': message_bus.PeripheralType.MUSIC_V2
}
