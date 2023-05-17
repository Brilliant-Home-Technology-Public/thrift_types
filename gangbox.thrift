namespace py thrift_types.gangbox
namespace java thrift_types.gangbox

enum EasingType {
  // Jump immediately to requested intensity values. This is useful during magnetic load detection
  // to ensure that the load is not set to any intermediate intensity levels.
  NO_EASING = 0,
  // Ease into requested intensity values at a linear rate. For a control gangbox using the
  // LINEAR EasingType, we'll still smooth values for set requests that only include intensity
  // even if the fade rate is 0. This is to make the experience of using sliders (which
  // throttle intensity sets) when the load is already on feel smooth at this fade rate. Hence
  // this is different from NO_EASING, which never smooths any intensity sets.
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
  //   - Switch, however, expects step_interval_ms and min_step_magnitude to be None
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

// Fade constants for switch
// TODO: Update following more research
const i32 SWITCH_200_TO_300_W_MIN_DIM_SMOOTHING_DURATION_MS = 2000
const i32 SWITCH_300_TO_400_W_MIN_DIM_SMOOTHING_DURATION_MS = 3000
const i32 SWITCH_400_W_AND_OVER_MIN_DIM_SMOOTHING_DURATION_MS = 5000

// There is a switch bug (CQ-8491) where very low fade out end levels and long fade durations can
// cause a brief flash on/off at the end of a fade out. Since we want fade in start level to match
// fade out end level and our general belief is that a level of 50 isn't noticeable for any loads,
// we make 50 the minimum allowed fade in start level/fade out end level.
const i32 SWITCH_MINIMUM_FADE_START_AND_END_LEVEL = 50
const i32 SWITCH_150_TO_200W_MAX_FADE_START_AND_END_LEVEL = 200
const i32 SWITCH_200_TO_250W_MAX_FADE_START_AND_END_LEVEL = 150
const i32 SWITCH_250_TO_450W_MAX_FADE_START_AND_END_LEVEL = 125
const i32 SWITCH_450W_AND_OVER_MAX_FADE_START_AND_END_LEVEL = 75
