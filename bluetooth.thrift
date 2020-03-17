namespace py thrift_types.bluetooth
namespace java thrift_types.bluetooth

const string MESH_PROV_SERVICE_UUID_STR = "00001827-0000-1000-8000-00805f9b34fb"
const string MESH_PROXY_SERVICE_UUID_STR = "00001828-0000-1000-8000-00805f9b34fb"
const string MESH_PROV_DATA_IN_UUID_STR = "00002adb-0000-1000-8000-00805f9b34fb"
const string MESH_PROV_DATA_OUT_UUID_STR = "00002adc-0000-1000-8000-00805f9b34fb"
const string MESH_PROXY_DATA_IN_UUID_STR ="00002add-0000-1000-8000-00805f9b34fb"
const string MESH_PROXY_DATA_OUT_UUID_STR = "00002ade-0000-1000-8000-00805f9b34fb"
const string MESH_CONFIG_VARIABLE_PREFIX = "mesh_device:"
const string NORDIC_SERVICE_UUID_STR = "0000fee4-0000-1000-8000-00805f9b34fb"
const string CONFIGURATION_VARIABLE_MESH_ELEMENTS_ = "mesh_elements"
const string CONFIGURATION_VARIABLE_DEVICE_KEY = "device_key"
const string SWITCH_CONFIG_PERIPHERAL_PREFIX = "switch_config:"

// The advertisement priority enum is used by the adapter client for ordering advertisments
// that are enqueued for broadcasting. The underlying mechanism used is a PriorityQueue and
// returns items with lower value first. As a result, the enum that is used to represent
// the highest priority is smaller than the lowest priority.
enum AdvertisementPriority {
  HIGH = 1,
  LOW = 100,
}

enum BluetoothService {
  BRILLIANT_CONTROL_PROVISIONING = 1,
  MESH_PROVISIONING = 2,
  MESH_PROXY = 3,
  NORDIC_SERVICE = 4, // This includes the Nordic-defined DFU (Device Firmware Update) protocol
}

struct BluetoothDevice {
  1: list<BluetoothService> services = []
  2: optional string mac_address
  3: optional string device_id
  4: optional byte signal_strength
}

enum MeshDeviceType {
  SWITCH = 0,
  CONTROL = 1,
}

enum OtaUpdateStatus {
  UP_TO_DATE = 0,
  IN_PROGRESS = 1,
}

struct NetKey {
  1: i16 index
  2: string key // 32 digit hexadecimal
}

struct NetKeys {
  1: list<NetKey> keys
}

struct NetKeyIndexes {
  1: list<i16> net_key_indexes
}

struct AppKey {
  1: i16 index
  2: i16 bound_net_key_index
  3: string key // 32 digit hexadecimal
}

struct AppKeys {
  1: list<AppKey> keys
}

struct Model {
  1: i16 id			// 0x1000 for onoff model, 0x1002 for level model
  2: list<i16> app_key_indexes	// The app keys which are bound to this model
}

struct MeshElement {
  1: i16 index			// The index of the element in the mesh device
  2: i16 unicast_address
  3: list<Model> models
}

struct MeshElements {
  1: list<MeshElement> mesh_elements
}

struct MeshDeviceConfig {
  1: string device_id		// The UUID of the device
  2: MeshDeviceType type
  3: i16 version_id		// The version of this device
  4: string device_key		// The device key will be required for appkey rotation
  5: list<i16> net_key_indexes	// This represents what networks the mesh device is part of
  6: list<MeshElement> mesh_elements	// Elements on a mesh device -> see below for Element definition
  7: string relay_device_id	// The device from which we can reach the mesh device
}

struct ReplayProtection {
  1: map<i32, i64> unicast_address_to_seqauth_map
}

struct BluetoothDevices {
  1: list<BluetoothDevice> devices
}

enum BrilliantOpCode{
//  First 2 bits must be 1. Bytes 2 and 3 are Brilliant BT SIG ID: 0x0820
  RESERVED_FOR_FUTURE_USE = 0xC02008
  SWITCH_OPCODE = 0xC12008
}

enum SwitchPropertyID {
  RESERVED_FOR_FUTURE_USE     = 0x00,
  ALWAYS_ON                   = 0x01,
  DIMMABLE                    = 0x02,
  MINIMUM_DIM_LEVEL           = 0x03,
  MAXIMUM_DIM_LEVEL           = 0x04,
  MOTION_LOW_THRESHOLD        = 0x05,
  MOTION_HIGH_THRESHOLD       = 0x06,
  STATUS_LIGHT_MAX_BRIGHTNESS = 0x07,
  UNICAST_ADDRESS_FORWARDING  = 0x08,
  MOTION_TO_TRIGGER_ON        = 0x09,
  MOTION_TO_TRIGGER_OFF       = 0x0A,
  MOTION_SCORE                = 0x0B,
  MOTION_DETECTED             = 0x0C,
  TEMPERATURE                 = 0x0D,
  UUID                        = 0x0E,
  FIRMWARE_VERSION            = 0x0F,
  API_VERSION                 = 0x10,
  CURRENT_ZERO_CROSS          = 0x11,
  BREAK_DIMMING               = 0x12,
  POWER                       = 0x13,
  POWER_THRESHOLD             = 0x14,
  BREAK_CIRCUIT               = 0x15,
  CURRENT_SENSE_ADC_DATA      = 0x16,
  DEVICE_REVISION             = 0x17,
  ERROR_STATUS                = 0x18,
  DOUBLE_TAP_ENABLED          = 0x19,
}

enum BreakCircuitStatus {
  // bitflags: keep values a multiple of 2
  OVER_WATTAGE      = 1;
  OVER_HEAT         = 2;
}

enum SwitchErrorStatus {
  NORMAL                   = 0,
  INTERNAL_ERROR           = 1,
  FLASH_MALFUNCTION        = 2,
  FLASH_OUT_OF_MEMORY      = 3,
}

enum SwitchOpCode {
  RESERVED_FOR_FUTURE_USE   = 0x00,
  GET_PROPERTIES            = 0x01,
  SET_PROPERTIES            = 0x02,
  PROPERTIES_STATUS         = 0x03,
  GESTURE_DETECTED          = 0x04,
}

enum SwitchGesture {
  RESERVED_FOR_FUTURE_USE = 0x00,
  FLICK                   = 0x01,
  SLIDE                   = 0x02,
  TAP                     = 0x03,
  DOUBLE_TAP              = 0x04,
}

struct SwitchPropertySpec {
  1: byte property_id
  2: i16 property_size // in bytes
  3: optional i64 default_value
  4: optional i64 min_value
  5: optional i64 max_value
  6: optional string variable_name
}

const map<SwitchPropertyID, SwitchPropertySpec> SWITCH_PROPERTY_SPECS = {
  SwitchPropertyID.ALWAYS_ON: {
    "property_id": SwitchPropertyID.ALWAYS_ON,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "variable_name": "always_on", // special case: mapped to the peripheral type
  },
  SwitchPropertyID.DIMMABLE: {
    "property_id": SwitchPropertyID.DIMMABLE,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "variable_name": 'dimmable',
  },
  SwitchPropertyID.MINIMUM_DIM_LEVEL: {
    "property_id": SwitchPropertyID.MINIMUM_DIM_LEVEL,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1000,
    "variable_name": 'minimum_dim_level',
  },
  SwitchPropertyID.MAXIMUM_DIM_LEVEL: {
    "property_id": SwitchPropertyID.MAXIMUM_DIM_LEVEL,
    "property_size": 2,
    "default_value": 1000,
    "min_value": 0,
    "max_value": 1000,
    "variable_name": 'maximum_dim_level',
  },
  SwitchPropertyID.MOTION_LOW_THRESHOLD: {
    "property_id": SwitchPropertyID.MOTION_LOW_THRESHOLD,
    "property_size": 1,
    "default_value": 15,
    "min_value": 0,
    "max_value": 100,
    "variable_name": 'motion_low_threshold',
  },
  SwitchPropertyID.MOTION_HIGH_THRESHOLD: {
    "property_id": SwitchPropertyID.MOTION_HIGH_THRESHOLD,
    "property_size": 1,
    "default_value": 24,
    "min_value": 0,
    "max_value": 100,
    "variable_name": 'motion_high_threshold',
  },
  SwitchPropertyID.STATUS_LIGHT_MAX_BRIGHTNESS: {
    "property_id": SwitchPropertyID.STATUS_LIGHT_MAX_BRIGHTNESS,
    "property_size": 2,
    "default_value": 1000,
    "min_value": 0,
    "max_value": 1000,
    "variable_name": 'status_light_max_brightness',
  },
  SwitchPropertyID.UNICAST_ADDRESS_FORWARDING: {
    "property_id": SwitchPropertyID.UNICAST_ADDRESS_FORWARDING,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 65535,
    "variable_name": 'slider_config', // special case: mapped to a thrift struct
  },
  SwitchPropertyID.MOTION_TO_TRIGGER_ON: {
    "property_id": SwitchPropertyID.MOTION_TO_TRIGGER_ON,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "variable_name": '',
  },
  SwitchPropertyID.MOTION_TO_TRIGGER_OFF: {
    "property_id": SwitchPropertyID.MOTION_TO_TRIGGER_OFF,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "variable_name": '',
  },
  SwitchPropertyID.MOTION_SCORE: {
    "property_id": SwitchPropertyID.MOTION_SCORE,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 100,
    "variable_name": '',
  },
  SwitchPropertyID.MOTION_DETECTED: {
    "property_id": SwitchPropertyID.MOTION_DETECTED,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "variable_name": 'movement_detected',
  },
  SwitchPropertyID.TEMPERATURE: {
    "property_id": SwitchPropertyID.TEMPERATURE,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 65535,
    "variable_name": 'temperature',
  },
  SwitchPropertyID.UUID: {
    "property_id": SwitchPropertyID.UUID,
    "property_size": 16,
    "variable_name": '',
  },
  SwitchPropertyID.FIRMWARE_VERSION: {
    "property_id": SwitchPropertyID.FIRMWARE_VERSION,
    "property_size": 8, // SoftDevice (2 bytes) + Bootloader (2 bytes) + App (4 bytes)
    "default_value": 0,
    "variable_name": 'firmware_version',
  },
  SwitchPropertyID.API_VERSION: {
    "property_id": SwitchPropertyID.API_VERSION,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 255,
    "variable_name": 'api_version',
  },
  SwitchPropertyID.CURRENT_ZERO_CROSS: {
    "property_id": SwitchPropertyID.CURRENT_ZERO_CROSS,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1000,
    "variable_name": '',
  },
  SwitchPropertyID.BREAK_DIMMING: {
    "property_id": SwitchPropertyID.BREAK_DIMMING,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "variable_name": 'break_dimming',
  },
  SwitchPropertyID.POWER: {
    "property_id": SwitchPropertyID.POWER,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 65535,
    "variable_name": '', // units in 1/10 of a watt
  },
  SwitchPropertyID.POWER_THRESHOLD: {
    "property_id": SwitchPropertyID.POWER_THRESHOLD,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 65535,
    "variable_name": 'power_threshold', // units in 1/10 of a watt
  },
  SwitchPropertyID.BREAK_CIRCUIT: {
    "property_id": SwitchPropertyID.BREAK_CIRCUIT,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 3,
    "variable_name": 'break_circuit', // BreakCircuitStatus bitflags
  },
  SwitchPropertyID.CURRENT_SENSE_ADC_DATA: {
    "property_id": SwitchPropertyID.CURRENT_SENSE_ADC_DATA,
    "property_size": 256, // 128 values of 2 byte adc readings
    "variable_name": '',
  },
  SwitchPropertyID.DEVICE_REVISION: {
    "property_id": SwitchPropertyID.DEVICE_REVISION,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 255,
    "variable_name": '',
  },
  SwitchPropertyID.ERROR_STATUS: {
    "property_id": SwitchPropertyID.ERROR_STATUS,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 255,
    "variable_name": '', // SwitchErrorStatus value
  },
  SwitchPropertyID.DOUBLE_TAP_ENABLED: {
    "property_id": SwitchPropertyID.DOUBLE_TAP_ENABLED,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "variable_name": '',
  },
}

const map<SwitchGesture, SwitchPropertySpec> SWITCH_GESTURE_SPECS = {
  SwitchGesture.FLICK: {
    "property_id": SwitchGesture.FLICK,
    "property_size": 1,
    "min_value": 0, // 0 for down flick
    "max_value": 1, // 1 for up flick
  },
  SwitchGesture.TAP: {
    "property_id": SwitchGesture.TAP,
    "property_size": 0,
  },
  SwitchGesture.SLIDE: {
    "property_id": SwitchGesture.SLIDE,
    "property_size": 2,
    "min_value": -32768, // negative for slide down
    "max_value": 32767,  // positive for slide up
  },
  SwitchGesture.DOUBLE_TAP: {
    "property_id": SwitchGesture.DOUBLE_TAP,
    "property_size": 0,
  },
}
