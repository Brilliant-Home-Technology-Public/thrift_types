namespace py thrift_types.notification
namespace java thrift_types.notification

enum NotificationType {
  UNKNOWN = 0,
  ALEXA_MUTED = 1,
  ALEXA_UNMUTED = 2,
  ALEXA_NEW_NOTIFICATIONS = 3,
  ALEXA_CONFIGURE_HOME_SKILL = 4,
}

enum NotificationAction {
  NONE = 0,
  ALEXA_CONFIGURE_HOME_SKILL = 1,
}

enum NotificationPriority {
  UNKNOWN = 0,
}

struct Notification {
  1: string id
  2: i64 timestamp
  3: NotificationType notification_type
  4: NotificationAction notification_action
  5: NotificationPriority notification_priority
  6: optional map<string, string> notification_context
}
