namespace py thrift_types.message_bus
namespace java thrift_types.message_bus

const string IDENTIFIER = "message_bus"

const string ALEXA_VOICE_IDENTIFIER = "voice_peripheral"
const string ANALYTICS_IDENTIFIER = "analytics_peripheral"
const string ART_CONFIG_IDENTIFIER = "art_config_peripheral"
const string ART_IDENTIFIER = "art_peripheral"
const string DEVICE_CONFIG_IDENTIFIER = "device_config_peripheral"
const string DEVICE_AUTH_CONFIG_IDENTIFIER = "device_authorization_configuration"
const string DEVICE_STATUS_IDENTIFIER = "device_status_peripheral"
const string DISCOVERY_IDENTIFIER = "discovery_peripheral"
const string FACEPLATE_IDENTIFIER = "faceplate_peripheral"
const string FACEPLATE_UART_STATUS_IDENTIFIER = "faceplate_uart_status_peripheral"
const string GANGBOX_IDENTIFIER = "gangbox_peripheral"
const string GANGBOX_UART_STATUS_PREFIX = "gangbox_uart_status_peripheral"
const string GANGBOX_CONFIG_IDENTIFIER = "gangbox_config_peripheral"
const string HARDWARE_IDENTIFIER = "hardware_peripheral"
const string HOME_CONFIG_IDENTIFIER = "home_configuration"
const string HUE_BRIDGE_IDENTIFIER = "hue_bridge"
const string HUE_BRIDGE_CONFIG_IDENTIFIER = "hue_bridge_configuration"
const string LIGHT_CONFIG_IDENTIFIER = "light_config_peripheral"
const string MOTION_DETECTION_IDENTIFIER = "motion_detection_config_peripheral"
const string OBJECT_STORE_IDENTIFIER = "object_store_peripheral"
const string OWNER_DEVICE_IDENTIFIER = "message_bus_owner"
const string REMOTE_BRIDGE_IDENTIFIER = "remote_bridge"
const string RING_IDENTIFIER = "ring_peripheral"
const string RING_CONFIG_IDENTIFIER = "ring_configuration"
const string SCENE_CONFIG_IDENTIFIER = "scene_configuration"
const string SCENE_EXECUTION_IDENTIFIER = "scene_execution_peripheral"
const string SMARTTHINGS_CONFIG_IDENTIFIER = "smartthings_configuration"
const string SMARTTHINGS_IDENTIFIER = "smartthings"
const string SONOS_CONFIG_IDENTIFIER = "sonos_configuration"
const string SONOS_IDENTIFIER = "sonos"
const string VOICE_CONFIG_IDENTIFIER = "voice_configuration"
const string WIFI_IDENTIFIER = "wifi_peripheral"
const string WINK_IDENTIFIER = "wink"
const string SWITCH_UI_IDENTIFIER = "switch_ui"
const string NEST_CONFIG_IDENTIFIER = "nest_configuration"
const string NEST_IDENTIFIER = "nest"
const string EXECUTION_IDENTIFIER = "execution_peripheral"
const string HONEYWELL_CONFIG_IDENTIFIER = "honeywell_configuration"
const string HONEYWELL_IDENTIFIER = "honeywell"
const string ECOBEE_CONFIG_IDENTIFIER = "ecobee_configuration"
const string ECOBEE_IDENTIFIER = "ecobee"
const string BOOTSTRAP_IDENTIFIER = "bootstrap"
const string ALMOND_CONFIG_IDENTIFIER = "almond_configuration"
const string ALMOND_IDENTIFIER = "almond"
const string WEMO_CONFIG_IDENTIFIER = "wemo_configuration"
const string WEMO_IDENTIFIER = "wemo"
const string OAUTH_CONFIG_IDENTIFIER = "oauth_configuration"
const string ALARM_CONFIG_IDENTIFIER = "alarm_config_peripheral"

// Smartthings client id is a public id that all Brilliant requests use
const string RING_CLIENT_ID = "brilliant_test"
const string SMARTTHINGS_CLIENT_ID = "0a64157f-1717-42b9-85d0-4aaa37ece72d"
const string SONOS_API_KEY = "91c789f8-af21-4010-804e-c001ef651675"
const string NEST_CLIENT_ID = "1858a5fc-a794-46f5-a619-318b5aac45b0"
const string HONEYWELL_CLIENT_ID = "hqO3pG8w2vCLowWWdKT3IANyvw4PrGqu"
const string ECOBEE_CLIENT_ID = "p5QCDGdiJOHp7oRknVXzwpDEkeTRYTVy"
const string RING_VIRTUAL_DEVICE = "ring_virtual_device"
const string CONFIGURATION_VIRTUAL_DEVICE = "configuration_virtual_device"
const string EXTERNAL_CONFIGURATION_VIRTUAL_DEVICE = "external_configuration_virtual_device"
const string CONFIGURATION_PERIPHERAL_ID_VARIABLE_NAME = "configuration_peripheral_id"
const string PROCESS_CONFIGURATION_VARIABLE_PREFIX = "process_config:"
const string CLOUD_VIRTUAL_DEVICE = "cloud"

const string RELAY_DEVICE_VARIABLE_NAME = "relay_device"

const string UNASSIGNED_HOME_ID = "0"
const string UNASSIGNED_DEVICE_ID = "0"

enum PeripheralType {
  UNKNOWN = 0,
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
  HARDWARE = 22,
  SONOS_CONFIGURATION = 23,
  WINK_CONFIGURATION = 24,
  HUE_BRIDGE_CONFIGURATION = 25,
  HOME_CONFIGURATION = 26,
  LIGHT = 27,
  SCENE_EXECUTION = 28,
  WIFI = 29,
  ANALYTICS = 30,
  RING_CONFIGURATION = 31,
  NEST_CONFIGURATION = 32,
  EXECUTION = 33,
  HONEYWELL_CONFIGURATION = 34,
  ECOBEE_CONFIGURATION = 35,
  DEVICE_AUTHORIZATION_CONFIGURATION = 36,
  BOOTSTRAP = 37,
  ALMOND_CONFIGURATION = 38,
  WEMO_CONFIGURATION = 39,
  OUTLET = 40,
  OAUTH_CONFIGURATION = 41,
  GANGBOX_CONFIGURATION = 42,
  FACEPLATE_UART_STATUS = 43,
  GANGBOX_UART_STATUS = 44,
  GENERIC_ON_OFF = 45,
  ALWAYS_ON = 46,
  NEST_STRUCTURE = 47,
  ALARM_CONFIGURATION = 48,
}

enum PeripheralStatus {
  OFFLINE = 0, // Process does not exist for message bus to connect to
  ONLINE = 1, // Connected to message bus
  DISCONNECTED = 2, // Process connected to mb but cannot connect to necessary resource
}

struct Variable {
  1: string name
  2: optional string value
  3: optional i64 timestamp
  4: bool externally_settable
}

struct ModifiedVariable {
  1: string variable_name
  2: optional Variable variable # If the variable has been deleted, this will be None
  3: optional i64 deletion_timestamp
}

struct PeripheralRegistration {
  1: string name
  2: map<string, Variable> variables
  3: optional string virtual_device_id // If this peripheral belongs to a virtual device
  4: PeripheralType peripheral_type
  5: optional string dynamic_variable_prefix
  6: optional PeripheralStatus peripheral_status
  7: optional bool register_new_variables_with_current_time
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
  4: optional string dynamic_variable_prefix
  5: PeripheralStatus status
  6: optional i64 timestamp
  7: optional list<ModifiedVariable> deleted_variables = []
}

struct Device {
  1: string id
  2: map<string, Peripheral> peripherals
  3: i64 timestamp = 0
}

struct VirtualDeviceRegistration {
  1: Device device
}

struct ModifiedPeripheral {
  1: string peripheral_id
  2: bool deleted
  3: optional list<ModifiedVariable> modified_variables
  4: optional PeripheralStatus status
  5: optional PeripheralType peripheral_type
  6: optional string dynamic_variable_prefix
  7: i64 timestamp
  8: optional i64 prior_timestamp
  9: optional list<ModifiedVariable> prior_deleted_variables
  10: optional bool peripheral_type_changed // TODO: make non-optional
}

struct SubscriptionNotification {
  # This device is not gaurenteed to have peripherals populated.
  1: Device updated_device
  2: i64 timestamp
  3: optional list<ModifiedPeripheral> modified_peripherals = []
}

struct Devices {
  1: list<Device> devices
  2: string home_id
}

struct SavedDevices {
  1: list<Device> devices
  2: string home_id
  3: string version
}

struct SetVariableResponse {
  1: i64 timestamp
  4: list<ModifiedVariable> modified_variables = []
}

struct SetUpdatedVariablesResponse {
  1: i64 timestamp
}

struct DeviceAttributes {
  1: string home_id
  2: string my_device_id
}

struct SubscriptionRequest {
  1: optional string device_id
  2: optional PeripheralType peripheral_type
  3: optional string peripheral_id_glob
}

enum InitializationTarget {
  MESSAGE_BUS_INITIALIZED = 1
  NETWORK_ONLINE = 2
  HOME_ID_ASSIGNED = 3
  CONFIGURATION_INITIALIZED = 4
}

service PeripheralService {

  SetVariableResponse set_variables_request(
      1: string device_id,
      2: string peripheral_name,
      3: map<string, string> variables,
      4: map<string, i64> last_set_timestamps,
  )

  oneway void handle_notification(1: SubscriptionNotification notification)

  oneway void handle_home_id_updated(1: string new_home_id)
}

service MessageBusService {

  DeviceAttributes get_attributes()

  Devices get_all()
  Device get_device(1: string device_id)
  Peripheral get_peripheral(1: string device_id, 2: string peripheral_name)

  void delete_peripheral(
      1: string device_id,
      2: string peripheral_id,
  )

  SetUpdatedVariablesResponse set_updated_variables(
      1: string device_id,
      2: string peripheral_name,
      3: list<ModifiedVariable> modified_variables,
  )
  SetVariableResponse set_variables_request(
      1: string device_id,
      2: string peripheral_name,
      3: map<string, string> variables,
      4: map<string, i64> last_set_timestamps,
  )

  void handle_notification(1: SubscriptionNotification notification)

  Devices subscribe(1: SubscriptionRequest subscription_request)

  void update_peripheral_status(
      1: string device_id,
      2: string peripheral_name,
      3: PeripheralStatus status,
  )

  MessageBusRegistration register_peripheral(1: PeripheralRegistration registration)

  MessageBusRegistration register_virtual_device(1: VirtualDeviceRegistration registration)

  void set_home_id(1: string home_id)
}
