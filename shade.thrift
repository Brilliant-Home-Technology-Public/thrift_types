namespace py thrift_types.shade
namespace java thrift_types.shade

enum PositionType {
  PRIMARY = 1
  SECONDARY = 2
  TILT = 3
}

struct PositionCapability {
  1: PositionType position_type
  2: bool continuous
  3: optional string display_name
}

struct ShadeCapabilities {
  1: map<PositionType, PositionCapability> supported_positions
  2: optional bool supports_favorite
  3: optional bool stoppable = true
}
