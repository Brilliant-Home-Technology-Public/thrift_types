namespace py thrift_types.switch_ui
namespace java thrift_types.switch_ui

const i32 SLIDE_THROTTLE_INTERVAL_MS = 250

enum IntercomState {
  IDLE = 0,
  VIDEO_CALL = 1, // calling another intercom
  AUDIO_CALL = 2, // calling another intercom
  RECEIVE = 3, // receiving a call from another intercom
  SHUTDOWN = 4, // used to notify the end of a call and indicate state is being cleaned up
  VIDEO_CALL_CAMERA_DISABLED = 5, // VIDEO_CALL but camera has been disabled
  AUDIO_BROADCAST_EMISSION = 6,
  AUDIO_BROADCAST_RECEPTION = 7,
  LIVE_VIEW_MONITORING = 8,
  LIVE_VIEW_TRANSMISSION = 9,
  UNAVAILABLE = 11 // temporarily disabled, likely due to not having gstreamer call permission
}
