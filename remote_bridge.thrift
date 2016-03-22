namespace py thrift_types.remote_bridge

include "message_bus.thrift"

enum DeviceStatus {
  ONLINE = 0,
  OFFLINE = 1,
  PENDING = 2,
}

struct RemoteDevice {
  1: string name
  2: string address
  3: DeviceStatus device_status
}

struct KnownRemoteDevices {
  1: list<RemoteDevice> known_remote_devices
}

struct Pong {
  1: i64 last_update_timestamp
  2: i64 current_time
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

  Pong ping()
}
