namespace py thrift_types.music
namespace java thrift_types.music

struct MusicTrack {
  2: string title
  3: string artist
  4: string album
  5: optional string album_art
  6: optional i64 duration
  7: i64 queue_position
}

struct PlayQueue {
  1: list<MusicTrack> tracks
}

struct Playlist {
  1: string title
  2: string uri
  3: string description
  4: string album_art
  5: string metadata
}

struct Playlists {
  1: list<Playlist> playlists
}
