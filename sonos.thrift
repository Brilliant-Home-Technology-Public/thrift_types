namespace py thrift_types.sonos
namespace java thrift_types.sonos

// For favorites, set uri to "<raw_uri>". For playlists, set uri to "playlist:<raw_uri>"
const string PLAYLIST_URI_PREFIX = "playlist"
const string LINE_IN_URI_PREFIX = "line_in_source"
// Set 'play_uri' variable to HOME_THEATER_PREFIX_URI to start Home Theater playback
// PREFIX naming allows possibility of supporting Home Theater playback on a group where the
// coordinator is not the Sonos with the Home Theater input.
const string HOME_THEATER_URI_PREFIX = "home_theater_source"

enum GroupStatus {
  UNKNOWN = 0,
  MOVED = 1,
  GONE = 2,
}

struct GroupStatusUpdate {
  1: GroupStatus status
  2: optional string new_group_coordinator_id // Only set when status == MOVED
}

struct GroupRequest {
  1: list<string> speaker_ids
}
