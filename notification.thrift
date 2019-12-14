namespace py thrift_types.notification
namespace java thrift_types.notification

enum BrilliantNotificationType {
  UNKNOWN = 0,
  ALEXA_MUTED = 1,
  ALEXA_UNMUTED = 2,
  ALEXA_NEW_NOTIFICATIONS = 3,
  ALEXA_CONFIGURE_HOME_SKILL = 4,
}

enum BrilliantNotificationAction {
  NONE = 0,
  ALEXA_CONFIGURE_HOME_SKILL = 1,
}

enum BrilliantNotificationPriority {
  UNKNOWN = 0,
}

struct BrilliantNotification {
  1: string id
  2: i64 timestamp
  3: BrilliantNotificationType notification_type
  4: BrilliantNotificationAction notification_action
  5: BrilliantNotificationPriority notification_priority
  6: optional map<string, string> notification_context
}
