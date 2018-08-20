namespace py thrift_types.sonos
namespace java thrift_types.sonos

enum GroupStatus {
  UNKNOWN = 0,
  MOVED = 1,
  GONE = 2,
}

struct GroupStatusUpdate {
  1: GroupStatus status
  2: optional string new_group_coordinator_id // Only set when status == MOVED
}
