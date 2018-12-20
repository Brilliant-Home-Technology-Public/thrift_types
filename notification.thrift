namespace py thrift_types.notification
namespace java thrift_types.notification

enum NotificationType {
  UNKNOWN = 0,
  TUTORIAL = 1,

  DEVICE_STATE_UPDATE = 2,
}

enum NotificationAction {
  NONE = 0,
  LEARN_SCREEN_GESTURES = 1,
  ADD_DEVICE = 2,
  OFFLINE_DEVICE = 3,
}

enum NotificationPriority {
  NORMAL = 0,
  HOME_SCREEN_NUDGE = 1,
  BARGE_IN_POPUP = 2,
}

struct Notification {
  1: string id
  2: i64 timestamp
  3: NotificationType notification_type
  4: NotificationAction notification_action
  5: NotificationPriority notification_priority
  6: optional string related_device_id
  7: optional map<string, string> notification_context
}

struct Notifications {
  1: list<Notification> notifications
}

const string NOTIFICATION_STATE_PREFIX = "notification_state:"

struct NotificationState {
  1: string notification_id
  2: bool is_read
  3: bool dismissed
}

# Examples:
# TUTORIAL + ADD_DEVICE
#
# Newly discovered Sonos: DEVICE_STATE_UPDATE + ADD_DEVICE + related_device_id = sonos
# Offline Philips Hue: DEVICE_STATE_UPDATE + NONE or OFFLINE_DEVICE

#  6: i64 notification_ttl # If 0, stays around until explicitly removed
#  7: i32 post_read_snooze_time_ms # If 0, gets removed on read. Else, comes back after snooze time
