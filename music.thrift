namespace py thrift_types.music

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

struct MusicPlayer {
  1: string ip_address
  2: string zone_name
}

struct MusicPlayers {
  1: list<MusicPlayer> players
}

struct Playlist {
  1: string title
  2: string uri
  3: string description
  4: string album_art
}

struct Playlists {
  1: list<Playlist> playlists
}
