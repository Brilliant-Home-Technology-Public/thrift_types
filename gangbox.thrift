namespace py thrift_types.gangbox
namespace java thrift_types.gangbox

enum EasingType {
  NO_EASING = 0,
  LINEAR = 1,
  EASE_OUT_CUBIC = 2,
}

enum MinDimlevelCalibrationStatus {
  IDLE = 0,
  START = 1,
  SUCCESS = 2,
}

struct DimSmoothingConfiguration {
  1: EasingType easing_type
  // Required for all easing types except for NO_EASING
  2: optional i32 step_interval_ms
  3: optional i32 min_step_magnitude
  4: optional i32 max_fade_in_duration_ms
  5: optional i32 max_fade_out_duration_ms
  6: optional bool use_proportional_duration
}

enum GangboxDeviceRevision {
  DVT = 0,
  V1 = 1,
  V2 = 2,
}

// TODO: Update following more research
const i32 SWITCH_MEDIUM_WATTAGE_MIN_DIM_SMOOTHING_DURATION_MS = 1000
