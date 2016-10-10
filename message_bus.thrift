namespace py thrift_types.message_bus

const string IDENTIFIER = "message_bus"
const string OWNER_DEVICE_IDENTIFIER = "message_bus_owner"
const string SMARTTHINGS_IDENTIFIER = "smartthings"
const string WINK_IDENTIFIER = "wink"
const string HUE_BRIDGE_IDENTIFIER = "hue_bridge"
// Smartthings client id is a public id that all Brilliant requests use
const string SMARTTHINGS_CLIENT_ID = "fe8580b0-00e7-4119-a12a-d988e1dca3f3"

enum PeripheralType {
  LIGHT = 0,
  LOCK = 1,
  DOORBELL = 2,
  MUSIC = 3,
  THERMOSTAT = 4,
  MOTION_SENSOR = 5,
  CONTROL = 6,
  DISCOVERY = 7,
  STATUS = 8,
  REMOTE_BRIDGE = 9,
  OBJECT_STORE = 10,
  AV_STREAMER = 11,
  UI = 12,
  VOICE = 13,
  SCENE_CONFIGURATION = 14,
  ART = 15,
  ART_CONFIGURATION = 16,
  SMARTTHINGS_CONFIGURATION = 17,
  VOICE_CONFIGURATION = 18,
  DEVICE_CONFIGURATION = 19,
  MOTION_DETECTION_CONFIGURATION = 20,
  LIGHT_CONFIGURATION = 21,
  HARDWARE_CONFIGURATION = 22,
}

struct Variable {
  1: string name
  2: string value
  3: i64 timestamp
  4: bool externally_settable
}

struct PeripheralRegistration {
  1: string name
  2: map<string, Variable> variables
  3: optional string virtual_device_id // If this peripheral belongs to a virtual device
  4: PeripheralType peripheral_type
}

struct MessageBusRegistration {
  1: string device_id
  2: string home_id
  3: map<string, Variable> current_variable_states
}

struct Peripheral {
  1: string name
  2: map<string, Variable> variables
  3: PeripheralType peripheral_type
}

struct Device {
  1: string id
  2: map<string, Peripheral> peripherals
}

struct VirtualDeviceRegistration {
  1: Device device
}

struct SubscriptionNotification {
  1: Device updated_device
  2: i64 timestamp
}

struct Devices {
  1: list<Device> devices
}

struct SetVariableResponse {
  1: i64 timestamp
  2: map<string, Variable> updated_variables
}

service PeripheralService {

  SetVariableResponse set_variables_request(
      1: string device_id,
      2: string peripheral_name,
      3: map<string, string> variables,
      4: map<string, i64> last_set_timestamps,
  )

  void handle_notification(1: SubscriptionNotification notification)
}

service MessageBusService {

  Devices get_all()
  Device get_device(1: string device_id)
  Peripheral get_peripheral(1: string device_id, 2: string peripheral_name)

  SetVariableResponse set_updated_variables(
      1: string device_id,
      2: string peripheral_name,
      3: map<string, Variable> variables,
  )
  SetVariableResponse set_variables_request(
      1: string device_id,
      2: string peripheral_name,
      3: map<string, string> variables,
      4: map<string, i64> last_set_timestamps,
  )
  void set_device(1: Device device)

  void subscribe_all(1: string subscriber_name)
  void subscribe_device(1: string subscriber_name, 2: string device_id)
  void subscribe_peripheral(
      1: string subscriber_name,
      2: string device_id,
      3: string peripheral_name,
  )

  MessageBusRegistration register_peripheral(1: PeripheralRegistration registration)

  MessageBusRegistration register_virtual_device(1: VirtualDeviceRegistration registration)

}
