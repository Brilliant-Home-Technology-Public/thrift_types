namespace py thrift_types.music
namespace java thrift_types.music

const string MUSIC_PLAYLIST_PREFIX = "music_asset:"

struct MusicTrack {
  2: string title
  3: optional string artist
  4: optional string album
  5: optional string album_art
  6: optional i64 duration
  7: optional i64 queue_position
  8: optional string music_service
  9: optional LineInMode line_in_mode
}

struct PlayQueue {
  1: list<MusicTrack> tracks
}

struct Playlist {
  1: string title
  2: string uri
  3: optional string description
  4: optional string album_art
  5: optional string metadata
}

struct Playlists {
  1: list<Playlist> playlists
}

struct Speakers {
  1: list<string> speaker_ids
}

enum RepeatMode {
  UNKNOWN = 0,
  OFF = 1,
  ON = 2,
  ONE = 3,
}

struct AvailableRepeatModes {
  1: list<RepeatMode> available_repeat_modes
}

enum LineInMode {
  GENERIC = 0,
  TV = 1,
  AIRPLAY = 2,
}
