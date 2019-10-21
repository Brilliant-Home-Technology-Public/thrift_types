namespace py thrift_types.bluetooth
namespace java thrift_types.bluetooth


const string MESH_PROXY_SERVICE_UUID_STR = "00001828-0000-1000-8000-00805f9b34fb"
const string MESH_PROV_DATA_IN_UUID_STR = "00002adb-0000-1000-8000-00805f9b34fb"
const string MESH_PROV_DATA_OUT_UUID_STR = "00002adc-0000-1000-8000-00805f9b34fb"
const string MESH_PROXY_DATA_IN_UUID_STR ="00002add-0000-1000-8000-00805f9b34fb"
const string MESH_PROXY_DATA_OUT_UUID_STR = "00002ade-0000-1000-8000-00805f9b34fb"
const string MESH_CONFIG_VARIABLE_PREFIX = "mesh_device:"

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
  MOTION_TO_TRiGGER_OFF       = 0x0A,
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
  2: byte property_size // in bytes
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
