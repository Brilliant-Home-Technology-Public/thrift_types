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

struct ReceiveUpdatedStateResponse {
  1: map<string, message_bus.SubscriptionNotification> updated_states
}

enum PeripheralIntegrityType {
  THRIFT_SERIALIZED_BINARY_HASH = 1,
}

// This struct represents an "integrity" computation for a peripheral.
// It is comprised of the actual "integrity" value and how the value was computed.
struct PeripheralIntegrity {
  1: binary integrity_value
  2: PeripheralIntegrityType integrity_type
}

struct KnownPeripheralState {
  1: i64 timestamp
  2: optional map<string, i64> variable_timestamps
  3: optional PeripheralIntegrity integrity
}

struct KnownDeviceState {
  1: i64 timestamp
  2: optional map<string, KnownPeripheralState> peripheral_states
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

  ReceiveUpdatedStateResponse receive_updated_state(
      // The key should be the device id.
      1: map<string, KnownDeviceState> known_states,
      // Whether to only return information about the peripherals and variables requested,
      // or all peripherals/variables for the provided devices.
      2: bool targeted,
  )

  Pong ping()
}
