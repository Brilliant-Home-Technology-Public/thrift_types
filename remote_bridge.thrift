namespace py thrift_types.remote_bridge

include "message_bus.thrift"

enum DeviceStatus {
  ONLINE = 0,
  OFFLINE = 1
}

struct DeviceStatuses {
  1: map<string, DeviceStatus> device_status_by_name
}

service RemoteBridgeService {
  message_bus.SetVariableResponse forward_set_variable_request(
      1: string device_name,
      2: string peripheral_name,
      3: string variable_name,
      4: string value,
  )

  void forward_notification(
      1: message_bus.SubscriptionNotification notification,
  )
}
