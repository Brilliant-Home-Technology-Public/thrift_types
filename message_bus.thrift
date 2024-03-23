namespace py thrift_types.message_bus
namespace java thrift_types.message_bus

const string IDENTIFIER = "message_bus"

// NOTE: Please do NOT include | in Device identifiers.
// See cross_platform_log.UNIQUE_PERIPHERAL_ID_DELIMITER
const string ALEXA_VOICE_IDENTIFIER = "voice_peripheral"
const string ANALYTICS_IDENTIFIER = "analytics_peripheral"
const string ART_CONFIG_IDENTIFIER = "art_config_peripheral"
const string ART_IDENTIFIER = "art_peripheral"
const string CONFIGURATION_TEMPLATES_IDENTIFIER = "configuration_templates"
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
const string HOMEKIT_CONFIG_IDENTIFIER = "homekit_configuration"
const string HOME_CONFIG_IDENTIFIER = "home_configuration"
const string HUE_BRIDGE_IDENTIFIER = "hue_bridge"
const string HUE_BRIDGE_CONFIG_IDENTIFIER = "hue_bridge_configuration"
const string LIGHT_CONFIG_IDENTIFIER = "light_config_peripheral"
const string MOTION_DETECTION_IDENTIFIER = "motion_detection_config_peripheral"
const string OBJECT_STORE_IDENTIFIER = "object_store_peripheral"
const string PROPERTY_IDENTIFIER = "property"
const string REMOTE_BRIDGE_IDENTIFIER = "remote_bridge"
const string RING_IDENTIFIER = "ring"
const string RING_CONFIG_IDENTIFIER = "ring_configuration"
const string SCENE_CONFIG_IDENTIFIER = "scene_configuration"
const string SCENE_EXECUTION_IDENTIFIER = "scene_execution_peripheral"
const string SMARTTHINGS_CONFIG_IDENTIFIER = "smartthings_configuration"
const string SMARTTHINGS_IDENTIFIER = "smartthings"
const string SONOS_CONFIG_IDENTIFIER = "sonos_configuration"
const string SONOS_IDENTIFIER = "sonos"
const string SONOS_MUSIC_LIRBARY_PREFIX = "sonos_music_library"
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
const string ALEXA_SKILL_IDENTIFIER = "alexa_skill_peripheral"
const string SOMFY_CONFIG_IDENTIFIER = "somfy_configuration"
const string SOMFY_IDENTIFIER = "somfy"
const string AUGUST_CONFIG_IDENTIFIER = "august_configuration"
const string AUGUST_IDENTIFIER = "august"
const string WEB_CONTENT_IDENTIFIER = "web_content_peripheral"
const string MUSIC_IDENTIFIER = "music_peripheral"
const string DEMO_CONFIG_IDENTIFIER = "demo_configuration"
const string DEMO_IDENTIFIER = "demo_peripheral"
const string REMOTE_MEDIA_IDENTIFIER = "remote_media_peripheral"
const string MESH_CONFIG_IDENTIFIER = "mesh_configuration"
const string BLE_PERIPHERAL_IDENTIFIER = "ble_peripheral"
const string LIFX_CONFIG_IDENTIFIER = "lifx_configuration"
const string LIFX_IDENTIFIER = "lifx"
const string MOBILE_CONFIGURATION_IDENTIFIER = "mobile_configuration"
const string SCHLAGE_IDENTIFIER = "schlage"
const string SCHLAGE_CONFIG_IDENTIFIER = "schlage_configuration"
const string HOMEKIT_IDENTIFIER = "homekit_peripheral"
const string BUTTERFLYMX_IDENTIFIER = "butterflymx"
const string BUTTERFLYMX_CONFIG_IDENTIFIER = "butterflymx_configuration"
const string LIFX_SCENE_CONFIG_IDENTIFIER = "lifx_scene_configuration"
const string TPLINK_IDENTIFIER = "tplink"
const string TPLINK_CONFIG_IDENTIFIER = "tplink_configuration"
const string HUE_BRIDGE_SCENE_CONFIG_IDENTIFIER = "hue_bridge_scene_configuration"
const string GENIE_IDENTIFIER = "genie"
const string GENIE_CONFIG_IDENTIFIER = "genie_configuration"
const string NOTIFICATION_IDENTIFIER = "notification_peripheral"
const string STATE_CONFIG_IDENTIFIER = "state_config_peripheral"
const string SPECTRUM_BRANDS_IDENTIFIER = "spectrum_brands"
const string SPECTRUM_BRANDS_CONFIG_IDENTIFIER = "spectrum_brands_configuration"
const string BRILLIANT_VIRTUAL_DEVICE_IDENTIFIER = "brilliant_virtual_device"
const string BRILLIANT_VIRTUAL_DEVICE_CONFIG_IDENTIFIER = "brilliant_virtual_device_configuration"
const string WEATHER_IDENTIFIER = "weather_peripheral"
const string DEVICE_METRICS_IDENTIFIER = "device_metrics_peripheral"
const string HONEYWELL_TC2_IDENTIFIER = "honeywell_tc2"
const string HONEYWELL_TC2_CONFIG_IDENTIFIER = "honeywell_tc2_configuration"
const string HONEYWELL_TC2_SCENE_CONFIG_IDENTIFIER = "honeywell_tc2_scene_configuration"
const string REMOTELOCK_IDENTIFIER = "remotelock"
const string REMOTELOCK_CONFIG_IDENTIFIER = "remotelock_configuration"
const string HUNTER_DOUGLAS_IDENTIFIER = "hunter_douglas"
const string HUNTER_DOUGLAS_CONFIG_IDENTIFIER = "hunter_douglas_configuration"
const string HUNTER_DOUGLAS_SCENE_CONFIG_IDENTIFIER = "hunter_douglas_scene_configuration"
const string DEVICE_GROUPS_CONFIG_IDENTIFIER = "device_groups_configuration"
const string REQUEST_DISPATCHER_IDENTIFIER = "request_dispatcher"
const string HOME_DETAILS_IDENTIFIER = "home_details"
const string SCHNEIDER_IDENTIFIER = "schneider"
const string SCHNEIDER_CONFIG_IDENTIFIER = "schneider_config"
const string SOLAR_IDENTIFIER = "solar_peripheral"
const string SMARTTHINGS_SCENE_CONFIG_IDENTIFIER = "smartthings_scene_configuration"
const string THIRDPARTY_DISCOVERY_IDENTIFIER = "thirdparty_discovery_peripheral"
const string ENPHASE_IDENTIFIER = "enphase"
const string ENPHASE_CONFIG_IDENTIFIER = "enphase_configuration"

const string SALTO_KS_IDENTIFIER = "salto_ks" // DEPRECATED
const string SALTO_KS_CONFIG_IDENTIFIER = "salto_ks_configuration" // DEPRECATED

const string SONOS_API_KEY = "91c789f8-af21-4010-804e-c001ef651675"
const string RING_VIRTUAL_DEVICE = "ring_virtual_device"
const string CONFIGURATION_VIRTUAL_DEVICE = "configuration_virtual_device"
const string CONFIGURATION_PERIPHERAL_ID_VARIABLE_NAME = "configuration_peripheral_id"
const string PERIPHERAL_INFO_ID_VARIABLE_NAME = "peripheral_info_id"
const string PROCESS_CONFIGURATION_VARIABLE_PREFIX = "process_config:"
const string CLOUD_VIRTUAL_DEVICE = "cloud"
const string BLE_MESH_VIRTUAL_DEVICE = "ble_mesh"
const string PVWATTS_IDENTIFIER = "pvwatts"

const string RELAY_DEVICE_VARIABLE_NAME = "relay_device"

const string UNASSIGNED_HOME_ID = "0"
const string UNASSIGNED_DEVICE_ID = "0"

const i32 DEFAULT_MAX_CACHED_DELETED_VARIABLES = 16

const list<string> KNOWN_VIRTUAL_DEVICE_IDS = [
    ALMOND_IDENTIFIER,
    BLE_MESH_VIRTUAL_DEVICE,
    CLOUD_VIRTUAL_DEVICE,
    CONFIGURATION_VIRTUAL_DEVICE,
    ECOBEE_IDENTIFIER,
    HONEYWELL_IDENTIFIER,
    HUE_BRIDGE_IDENTIFIER,
    NEST_IDENTIFIER,
    RING_VIRTUAL_DEVICE,
    SMARTTHINGS_IDENTIFIER,
    SONOS_IDENTIFIER,
    WEMO_IDENTIFIER,
    SOMFY_IDENTIFIER,
    AUGUST_IDENTIFIER,
    LIFX_IDENTIFIER,
    SCHLAGE_IDENTIFIER,
    BUTTERFLYMX_IDENTIFIER,
    TPLINK_IDENTIFIER,
    GENIE_IDENTIFIER,
    SPECTRUM_BRANDS_IDENTIFIER,
    BRILLIANT_VIRTUAL_DEVICE_IDENTIFIER,
    SALTO_KS_IDENTIFIER, // DEPRECATED
    HONEYWELL_TC2_IDENTIFIER,
    REMOTELOCK_IDENTIFIER,
    HUNTER_DOUGLAS_IDENTIFIER,
    SCHNEIDER_IDENTIFIER,
    ENPHASE_IDENTIFIER,
]

const map<string, string> THIRDPARTY_VIRTUAL_DEVICE_IDS_TO_CONFIG_IDS = {
    ALMOND_IDENTIFIER: ALMOND_CONFIG_IDENTIFIER,
    AUGUST_IDENTIFIER: AUGUST_CONFIG_IDENTIFIER,
    BUTTERFLYMX_IDENTIFIER: BUTTERFLYMX_CONFIG_IDENTIFIER,
    ECOBEE_IDENTIFIER: ECOBEE_CONFIG_IDENTIFIER,
    GENIE_IDENTIFIER: GENIE_CONFIG_IDENTIFIER,
    HONEYWELL_IDENTIFIER: HONEYWELL_CONFIG_IDENTIFIER,
    HONEYWELL_TC2_IDENTIFIER: HONEYWELL_TC2_CONFIG_IDENTIFIER,
    HUE_BRIDGE_IDENTIFIER: HUE_BRIDGE_CONFIG_IDENTIFIER,
    HUNTER_DOUGLAS_IDENTIFIER: HUNTER_DOUGLAS_CONFIG_IDENTIFIER,
    LIFX_IDENTIFIER: LIFX_CONFIG_IDENTIFIER,
    NEST_IDENTIFIER: NEST_CONFIG_IDENTIFIER,
    RING_VIRTUAL_DEVICE: RING_CONFIG_IDENTIFIER,
    SALTO_KS_IDENTIFIER: SALTO_KS_CONFIG_IDENTIFIER, // DEPRECATED
    SCHLAGE_IDENTIFIER: SCHLAGE_CONFIG_IDENTIFIER,
    SCHNEIDER_IDENTIFIER: SCHNEIDER_CONFIG_IDENTIFIER,
    SMARTTHINGS_IDENTIFIER: SMARTTHINGS_CONFIG_IDENTIFIER,
    SOMFY_IDENTIFIER: SOMFY_CONFIG_IDENTIFIER,
    SONOS_IDENTIFIER: SONOS_CONFIG_IDENTIFIER,
    SPECTRUM_BRANDS_IDENTIFIER: SPECTRUM_BRANDS_CONFIG_IDENTIFIER,
    TPLINK_IDENTIFIER: TPLINK_CONFIG_IDENTIFIER,
    WEMO_IDENTIFIER: WEMO_CONFIG_IDENTIFIER,
    REMOTELOCK_IDENTIFIER: REMOTELOCK_CONFIG_IDENTIFIER,
}

const list<string> BRIDGE_HOSTED_VIRTUAL_DEVICE_IDS = [
    CONFIGURATION_VIRTUAL_DEVICE,
    BLE_MESH_VIRTUAL_DEVICE,
]

struct SentinelValue {}
const SentinelValue OWNER_DEVICE_IDENTIFIER = {}

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
  ALEXA_SKILL = 49,
  SPEAKER = 50,
  MUSIC_LIBRARY = 51,
  SOMFY_CONFIGURATION = 52,
  SHADE = 53,
  AUGUST_CONFIGURATION = 54,
  WEB_CONTENT = 55,
  MUSIC_CONTENT = 56,
  DEMO_CONFIGURATION = 57,
  DEMO = 58,
  CAMERA = 59,
  REMOTE_MEDIA = 60,
  MESH_CONFIGURATION = 61,
  BLE = 62,
  LIFX_CONFIGURATION = 63,
  MOBILE_CONFIGURATION = 64,
  SCHLAGE_CONFIGURATION = 65,
  HOMEKIT = 66,
  BUTTERFLYMX_CONFIGURATION = 67,
  THIRD_PARTY_SCENE_CONFIGURATION = 68,
  TPLINK_CONFIGURATION = 69,
  BUILDING_ENTRY_PANEL = 70,
  MANAGED_BUILDING = 71,
  SWITCH_CONFIGURATION = 72,
  GENIE_CONFIGURATION = 73,
  GARAGE_DOOR = 74,
  NOTIFICATION = 75,
  STATE_CONFIGURATION = 76,
  SPECTRUM_BRANDS_CONFIGURATION = 77,
  BRILLIANT_VIRTUAL_DEVICE_CONFIGURATION = 78,
  WEATHER = 79,
  CLIMATE_SENSOR = 80,
  CONFIGURATION_TEMPLATES = 81,
  PROPERTY = 82,
  BRILLIANT_PLUG = 83,
  DEVICE_METRICS = 84,
  SALTO_KS_CONFIGURATION = 85, // DEPRECATED
  SALTO_KS_IQ = 86, // DEPRECATED
  HOMEKIT_CONFIGURATION = 87,
  HONEYWELL_TC2_CONFIGURATION = 88,
  SECURITY_SYSTEM = 89,
  HUNTER_DOUGLAS_CONFIGURATION = 90,
  REMOTELOCK_CONFIGURATION = 91,
  DEVICE_GROUPS_CONFIGURATION = 92,
  REQUEST_DISPATCHER = 93,
  HOME_DETAILS = 94,
  WATER_SHUTOFF_VALVE = 95,
  SCHNEIDER_CONFIGURATION = 96,
  SOLAR = 97,
  OFFLINE_LOCK = 98,
  THIRDPARTY_DISCOVERY = 99,
  ENPHASE_CONFIGURATION = 100,
}

enum PeripheralStatus {
  OFFLINE = 0, // Process does not exist for message bus to connect to
  ONLINE = 1, // Connected to message bus
  DISCONNECTED = 2, // Process connected to mb but cannot connect to necessary resource
  MALFUNCTIONING = 3, // DEPRECATED
  DEGRADED = 4, // DEPRECATED
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
  8: optional bool drop_dynamic_variables_on_start
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
  8: optional string version
}

enum DeviceType {
  UNKNOWN = 0
  CONTROL = 1
  MOBILE_APP = 2
  VIRTUAL = 3
  CLOUD = 4
  THIRDPARTY_VIRTUAL = 5
  VIRTUAL_CONTROL = 6
}

struct Device {
  1: string id
  2: map<string, Peripheral> peripherals
  3: i64 timestamp = 0
  4: optional DeviceType device_type
  5: optional string version
}

struct VirtualDeviceRegistration {
  1: Device device
}

struct ModifiedPeripheral {
  1: string peripheral_id
  2: bool deleted
  3: optional list<ModifiedVariable> modified_variables = []
  4: optional PeripheralStatus status
  5: optional PeripheralType peripheral_type
  6: optional string dynamic_variable_prefix
  7: i64 timestamp
  8: optional i64 prior_timestamp
  9: optional list<ModifiedVariable> prior_deleted_variables = []
  10: optional bool peripheral_type_changed // TODO: make non-optional
  11: optional bool peripheral_status_changed // TODO: make non-optional
}

struct SubscriptionNotification {
  # The SubscriptionNotification can be populated in the following ways:
  #
  # 1) A partial update.
  # A partial update occurs whenever specific peripherals in a device are modified. The message bus
  # has logic to attempt to group notifications together. Thus, multiple peripherals may be modified
  # in one SubscriptionNotification. In this case, the SubscriptionNotification will be as follows:
  # - updated_device: The device will only be paritially populated. The id, device_type, and
  #     timestamp will be set, but the map of peripherals will not be set.
  # - modified_peripherals: There will be at least one ModifiedPeripheral in the list.
  # - deleted: Will be false.
  #
  # 2) A full device update.
  # A device will send a full update on a set interval. This is done to ensure that the recipient of
  # the SubscriptionNotification can synchronize its view of the device if any partial updates were
  # somehow missed. In this case, the SubscriptionNotification will be as follows:
  # - updated_device: The device will be completely populated, including all peripherals for the
  #     device.
  # - modified_peripherals: Will be an empty list.
  # - deleted: Will be false.
  #
  # 3) A combined partial and full update.
  # Since the message bus has logic to attempt to group notifications together, it is possible that
  # a partial update and a full update will be combined into a single SubscriptionNotification. In
  # this case, the SubscriptionNotification will be as follows:
  # - updated_device: The device will be completely populated, including all peripherals for the
  #     device.
  # - modified_peripherals: There will be at least one ModifiedPeripheral in the list.
  # - deleted: Will be false
  #
  # 4) A device deletion.
  # When a device should be deleted, the SubscriptionNotification will be as follows:
  # - updated_device: The device will only be paritially populated. The id, device_type, and
  #     timestamp will be set, but the map of peripherals will not be set.
  # - modified_peripherals: Will be an empty list.
  # - deleted: Will be true.

  # Details about the device that is being updated.
  1: Device updated_device

  # The timestamp at which the SubscriptionNotification was sent.
  2: i64 timestamp

  # A list of peipherals that are being modified.
  3: optional list<ModifiedPeripheral> modified_peripherals = []

  # 'deleted' denotes whether or not the updated_device is being deleted.
  4: bool deleted = false
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

struct Event {
  1: optional i64 timestamp
  2: optional map<string, string> event_data
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
      3: i64 deletion_time_ms,
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
