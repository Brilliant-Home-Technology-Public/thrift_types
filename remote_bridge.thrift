namespace py thrift_types.remote_bridge
namespace java thrift_types.remote_bridge

include "message_bus.thrift"

enum DeviceStatus {
  ONLINE = 0,
  OFFLINE = 1,
  PENDING = 2,
}

struct RemoteDevice {
  1: string device_id
  # 2: string address - DEPRECATED
  3: DeviceStatus device_status
  4: bool always_connect
}

struct KnownRemoteDevices {
  1: list<RemoteDevice> known_remote_devices
}

struct Pong {
  1: i64 last_update_timestamp
  2: i64 current_time
}

struct PeripheralCheckpoint {
  1: i64 timestamp
  // MD5 sum of the Thrift-serialized structure
  2: optional binary integrity_checksum
  // Following two fields are for distributed virtual devices (e.g. ble_mesh)
  3: optional string owning_device_id
  4: optional i64 ownership_timestamp
}

struct DeviceCheckpoint {
  1: i64 timestamp
  2: map<string, PeripheralCheckpoint> peripheral_checkpoints
  // Following two fields are for non-distributed virtual devices
  3: optional string relaying_device_id
  4: optional i64 relay_timestamp
}

struct SynchronizeHomeResponse {
  1: list<message_bus.SubscriptionNotification> device_updates
}

service RemoteBridgeService {
  message_bus.SetVariableResponse forward_set_variables_request(
      1: string device_id,
      2: string peripheral_name,
      3: map<string, string> variables,
      4: map<string, i64> last_set_timestamps,
  )

  void forward_notification(
      1: message_bus.SubscriptionNotification notification,
  )

  SynchronizeHomeResponse synchronize_home(
      // Keyed by device ID
      1: map<string, DeviceCheckpoint> known_devices,
  )

  Pong ping()
}
