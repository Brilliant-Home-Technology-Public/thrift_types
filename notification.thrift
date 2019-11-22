namespace py thrift_types.notification
namespace java thrift_types.notification

enum NotificationType {
  UNKNOWN = 0,
}

enum NotificationAction {
  NONE = 0,
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
