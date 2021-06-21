namespace py thrift_types.bluetooth
namespace java thrift_types.bluetooth

include "hardware.thrift"

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
// Gestures are sent with a special "gesture" property ID and do not utilize the
// SwitchPropertyID scheme despite being part of the SWITCH_CONFIG_CLIENT model
const string GESTURE_PROPERTY_ID = "gesture"
const i32 SWITCH_DVT_APP_VERSION = 7
const i32 PLUG_PROD_APP_VERSION = 202009170
const i32 SWITCH_PUBLISH_CONFIG_APP_VERSION = 202102010
const i32 SWITCH_DFU_RELAY_APP_VERSION = 202102010
const i32 PLUG_DFU_RELAY_APP_VERSION = 202102010
const i32 SWITCH_MOTION_SCORE_255_APP_VERSION = 202103011
// We're using const bytes for unicast forwarding gestures rather than enums because we
// bitwise OR their values.
const byte UNICAST_FORWARDING_GESTURES_UNKNOWN = 0x00
const byte UNICAST_FORWARDING_GESTURES_ONOFF = 0x01
const byte UNICAST_FORWARDING_GESTURES_DIMMABLE = 0x02

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
  PLUG = 2,
}

enum OtaUpdateStatus {
  UP_TO_DATE = 0,
  IN_PROGRESS = 1,
}

enum FaultCondition {
  NORMAL = 0,
  WIFI_COEXISTENCE_CONFLICT = 1,
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
  SWITCH_LOAD_TYPE            = 0x1A,
  UNICAST_FORWARDING_GESTURES = 0x1B,
  CAPTOUCH_AND_LOAD_CONNECTED = 0x1C,
  AMPS_IN_MA                  = 0x1D,
  AMPS_SAFE_MAX_THRESHOLD     = 0x1E,
  TEMP_SAFE_MAX_THRESHOLD     = 0x1F,
  MOTION_MIN_SMPLS_BTW_UPDATE = 0x20,
  DBG_LAST_CS_RESULT_STATUS   = 0x21,
  DBG_COMPUTED_ZERO_POINT     = 0x22,
  DBG_CYCLES_SINCE_ZC_SUCCESS = 0x23,
  TUNE_MAX_DEVIATION_IDL_ZERO = 0x24,
  TUNE_ZC_NUM_PT_FOR_NOISE_REDUCTION   = 0x25,
  TUNE_MAX_DEV_BETWEEN_RUNS            = 0x26,
  REBOOT                      = 0x27,
  ENABLE_FWID_PACKET_BROADCAST= 0x28,
  DFU_LAST_TRANSFER_STATE     = 0x29,
  DFU_LAST_RX_RESPONSE        = 0x2A,
  DFU_END_TRANSFER_REASON     = 0x2B,
  DFU_LAST_RX_PACKET          = 0x2C,
  HARDWARE_REVISION           = 0x2D,
  CAPTOUCH_BTN00_TUNING_PARAM = 0x2E,
  CAPTOUCH_SLD00_TUNING_PARAM = 0x2F,
  DFU_RELAY_ENABLED           = 0x40,
  DFU_RELAY_APP_ID            = 0x41,
  DFU_RELAY_APP_VERSION       = 0x42,
  DBG_BUF_SET_NEXT_TRIGGER    = 0x43,
  DBG_BUF_AWAITING_NEXT_TRIGGER       = 0x44,
  DBG_BUF_CUR_CONTENTS_TRIGGER        = 0x45,
  DBG_BUF_SET_READ_CHUNK_IDX  = 0x46,
  DBG_BUF_GET_CHUNK           = 0x47,
  USE_COMPACT_COMM_PROTOCOL_FOR_BROADCASTING_MOTION_EVENT = 0x48,
  DFU_CURRENT_TRANSACTION_ID = 0x49,
  DFU_CURRENT_TX_REQUEST = 0x4A,
  DFU_CURRENT_MISSING_COUNT = 0x4B,
  DFU_MAX_MISSING_COUNT = 0x4C,
  DFU_TOTAL_MISSING_COUNT = 0x4D,
  DFU_BOOTLOADER_FSM_STATE = 0x4E,
  DFU_APPLICATION_FSM_STATE = 0x4F,
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
  SET_PUBLISH_CONFIG        = 0x05,
  GET_PUBLISH_CONFIG        = 0x06,
}

enum SwitchGesture {
  RESERVED_FOR_FUTURE_USE = 0x00,
  FLICK                   = 0x01,
  SLIDE                   = 0x02,
  TAP                     = 0x03,
  DOUBLE_TAP              = 0x04,
}

enum MeshPropertyDataType {
  // The data type defines how the property is packed into the mesh property message.
  // All data types shall be packed little-endian.
  RESERVED_FOR_FUTURE_USE = 0x00,
  BOOL                    = 0x01, // This shall be 0 (False) or 1 (True) and packed into 8 bits
  UINT8                   = 0x02, // This shall be an unsigned int packed into 8 bits (1 byte)
  UINT16                  = 0x03, // This shall be an unsigned int packed into 16 bits (2 bytes)
  UINT32                  = 0x04, // This shall be an unsigned int packed into 32 bits (4 bytes)
  UINT64                  = 0x05, // This shall be an unsigned int packed into 64 bits (8 bytes)
  INT8                    = 0x06, // This shall be a signed int packed into 8 bits (1 byte)
  INT16                   = 0x07, // This shall be a signed int packed into 16 bits (2 bytes)
  INT32                   = 0x08, // This shall be a signed int packed into 32 bits (4 bytes)
  INT64                   = 0x09, // This shall be a signed int packed into 64 bits (8 bytes)
  UINT8_ARRAY             = 0x0A, // This is an opaque byte array where the size is specifed by the
                                  // property_size field. Users are free to cast this property into
                                  // the desired struct.
}

struct SwitchPropertySpec {
  1: byte property_id
  2: i16 property_size // in bytes
  3: optional i64 default_value
  4: optional i64 min_value
  5: optional i64 max_value
  7: optional MeshPropertyDataType property_type
}

const map<SwitchPropertyID, SwitchPropertySpec> SWITCH_PROPERTY_SPECS = {
  SwitchPropertyID.ALWAYS_ON: {
    "property_id": SwitchPropertyID.ALWAYS_ON,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.DIMMABLE: {
    "property_id": SwitchPropertyID.DIMMABLE,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.MINIMUM_DIM_LEVEL: {
    "property_id": SwitchPropertyID.MINIMUM_DIM_LEVEL,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1000,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.MAXIMUM_DIM_LEVEL: {
    "property_id": SwitchPropertyID.MAXIMUM_DIM_LEVEL,
    "property_size": 2,
    "default_value": 1000,
    "min_value": 0,
    "max_value": 1000,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.MOTION_LOW_THRESHOLD: {
    "property_id": SwitchPropertyID.MOTION_LOW_THRESHOLD,
    "property_size": 1,
    "default_value": 15,
    "min_value": 0,
    "max_value": 100,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.MOTION_HIGH_THRESHOLD: {
    "property_id": SwitchPropertyID.MOTION_HIGH_THRESHOLD,
    "property_size": 1,
    "default_value": 24,
    "min_value": 0,
    "max_value": 100,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.STATUS_LIGHT_MAX_BRIGHTNESS: {
    "property_id": SwitchPropertyID.STATUS_LIGHT_MAX_BRIGHTNESS,
    "property_size": 2,
    "default_value": 1000,
    "min_value": 0,
    "max_value": 1000,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.UNICAST_ADDRESS_FORWARDING: {
    "property_id": SwitchPropertyID.UNICAST_ADDRESS_FORWARDING,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.MOTION_TO_TRIGGER_ON: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.MOTION_TO_TRIGGER_ON,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.MOTION_TO_TRIGGER_OFF: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.MOTION_TO_TRIGGER_OFF,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.MOTION_SCORE: {
    "property_id": SwitchPropertyID.MOTION_SCORE,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 100,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.MOTION_DETECTED: {
    "property_id": SwitchPropertyID.MOTION_DETECTED,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.TEMPERATURE: {
    "property_id": SwitchPropertyID.TEMPERATURE,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0, // TODO: The min_value needs to be adjusted to -32768
    "max_value": 65535, // TODO: The max_value needs to be adjusted to 32767
    "property_type": MeshPropertyDataType.INT16,
  },
  SwitchPropertyID.UUID: {
    "property_id": SwitchPropertyID.UUID,
    "property_size": 16,
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
  },
  SwitchPropertyID.FIRMWARE_VERSION: {
    "property_id": SwitchPropertyID.FIRMWARE_VERSION,
    "property_size": 8, // SoftDevice (2 bytes) + Bootloader (2 bytes) + App (4 bytes)
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
  },
  SwitchPropertyID.API_VERSION: {
    // This property is unused
    "property_id": SwitchPropertyID.API_VERSION,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 255,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.CURRENT_ZERO_CROSS: {
    "property_id": SwitchPropertyID.CURRENT_ZERO_CROSS,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1000,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.BREAK_DIMMING: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.BREAK_DIMMING,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.POWER: {
    "property_id": SwitchPropertyID.POWER,
    "property_size": 2,
    "default_value": 0, // units in 1/10 of a watt
    "min_value": 0,
    "max_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.POWER_THRESHOLD: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.POWER_THRESHOLD,
    "property_size": 2,
    "default_value": 0, // units in 1/10 of a watt
    "min_value": 0,
    "max_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.BREAK_CIRCUIT: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.BREAK_CIRCUIT,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 3,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.CURRENT_SENSE_ADC_DATA: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.CURRENT_SENSE_ADC_DATA,
    "property_size": 256, // 128 values of 2 byte adc readings
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
  },
  SwitchPropertyID.DEVICE_REVISION: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.DEVICE_REVISION,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 255,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.ERROR_STATUS: {
    // This property is unused
    "property_id": SwitchPropertyID.ERROR_STATUS,
    "property_size": 1,
    "default_value": 0, // SwitchErrorStatus value
    "min_value": 0,
    "max_value": 255,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.DOUBLE_TAP_ENABLED: {
    "property_id": SwitchPropertyID.DOUBLE_TAP_ENABLED,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.SWITCH_LOAD_TYPE: {
    "property_id": SwitchPropertyID.SWITCH_LOAD_TYPE,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 5,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.UNICAST_FORWARDING_GESTURES: {
    "property_id": SwitchPropertyID.UNICAST_FORWARDING_GESTURES,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 3,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.CAPTOUCH_AND_LOAD_CONNECTED: {
    "property_id": SwitchPropertyID.CAPTOUCH_AND_LOAD_CONNECTED,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.AMPS_IN_MA: {
    "property_id": SwitchPropertyID.AMPS_IN_MA,
    "property_size": 2,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.AMPS_SAFE_MAX_THRESHOLD: {
    "property_id": SwitchPropertyID.AMPS_SAFE_MAX_THRESHOLD,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.TEMP_SAFE_MAX_THRESHOLD: {
    "property_id": SwitchPropertyID.TEMP_SAFE_MAX_THRESHOLD,
    "property_size": 2,
    "default_value": 600,
    "min_value": -32768,
    "max_value": 32767,
    "property_type": MeshPropertyDataType.INT16,
  },
  SwitchPropertyID.MOTION_MIN_SMPLS_BTW_UPDATE: {
    "property_id": SwitchPropertyID.MOTION_MIN_SMPLS_BTW_UPDATE,
    "property_size": 1,
    "default_value": 50,
    "min_value": 0,
    "max_value": 255,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.DBG_LAST_CS_RESULT_STATUS: {
    "property_id": SwitchPropertyID.DBG_LAST_CS_RESULT_STATUS,
    "property_size": 1,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.DBG_COMPUTED_ZERO_POINT: {
    "property_id": SwitchPropertyID.DBG_COMPUTED_ZERO_POINT,
    "property_size": 2,
    "default_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.DBG_CYCLES_SINCE_ZC_SUCCESS: {
    "property_id": SwitchPropertyID.DBG_CYCLES_SINCE_ZC_SUCCESS,
    "property_size": 2,
    "default_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.TUNE_MAX_DEVIATION_IDL_ZERO: {
    "property_id": SwitchPropertyID.TUNE_MAX_DEVIATION_IDL_ZERO,
    "property_size": 2,
    "default_value": 32,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.TUNE_ZC_NUM_PT_FOR_NOISE_REDUCTION: {
    "property_id": SwitchPropertyID.TUNE_ZC_NUM_PT_FOR_NOISE_REDUCTION,
    "property_size": 2,
    "default_value": 15,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.TUNE_MAX_DEV_BETWEEN_RUNS: {
    "property_id": SwitchPropertyID.TUNE_MAX_DEV_BETWEEN_RUNS,
    "property_size": 2,
    "default_value": 96,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.REBOOT: {
    "property_id": SwitchPropertyID.REBOOT,
    "property_size": 1,
    "default_value": 0,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.ENABLE_FWID_PACKET_BROADCAST: {
    "property_id": SwitchPropertyID.ENABLE_FWID_PACKET_BROADCAST,
    "property_size": 1,
    "default_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.DFU_LAST_TRANSFER_STATE: {
    "property_id": SwitchPropertyID.DFU_LAST_TRANSFER_STATE,
    "property_size": 16,
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
  },
  SwitchPropertyID.DFU_LAST_RX_RESPONSE: {
    "property_id": SwitchPropertyID.DFU_LAST_RX_RESPONSE,
    "property_size": 4,
    "property_type": MeshPropertyDataType.UINT32,
  },
  SwitchPropertyID.DFU_END_TRANSFER_REASON: {
    "property_id": SwitchPropertyID.DFU_END_TRANSFER_REASON,
    "property_size": 1,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.DFU_LAST_RX_PACKET: {
    "property_id": SwitchPropertyID.DFU_LAST_RX_PACKET,
    "property_size": 20,
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
  },
  SwitchPropertyID.HARDWARE_REVISION: {
    "property_id": SwitchPropertyID.HARDWARE_REVISION,
    "property_size": 4,
    "property_type": MeshPropertyDataType.UINT32,
  },
  SwitchPropertyID.CAPTOUCH_BTN00_TUNING_PARAM: {
    "property_id": SwitchPropertyID.CAPTOUCH_BTN00_TUNING_PARAM,
    "property_size": 15,
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
  },
  SwitchPropertyID.CAPTOUCH_SLD00_TUNING_PARAM: {
    "property_id": SwitchPropertyID.CAPTOUCH_SLD00_TUNING_PARAM,
    "property_size": 13,
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
  },
  SwitchPropertyID.DFU_RELAY_ENABLED: {
    "property_id": SwitchPropertyID.DFU_RELAY_ENABLED,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.DFU_RELAY_APP_ID: {
    "property_id": SwitchPropertyID.DFU_RELAY_APP_ID,
    "property_size": 2,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.DFU_RELAY_APP_VERSION: {
    "property_id": SwitchPropertyID.DFU_RELAY_APP_VERSION,
    "property_size": 4,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT32,
  },
  SwitchPropertyID.DBG_BUF_SET_NEXT_TRIGGER: {
    "property_id": SwitchPropertyID.DBG_BUF_SET_NEXT_TRIGGER,
    "property_size": 1,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.DBG_BUF_AWAITING_NEXT_TRIGGER: {
    "property_id": SwitchPropertyID.DBG_BUF_AWAITING_NEXT_TRIGGER,
    "property_size": 1,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.DBG_BUF_CUR_CONTENTS_TRIGGER: {
    "property_id": SwitchPropertyID.DBG_BUF_CUR_CONTENTS_TRIGGER,
    "property_size": 1,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.DBG_BUF_SET_READ_CHUNK_IDX: {
    "property_id": SwitchPropertyID.DBG_BUF_SET_READ_CHUNK_IDX,
    "property_size": 1,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT8,
  },
  SwitchPropertyID.DBG_BUF_GET_CHUNK: {
    "property_id": SwitchPropertyID.DBG_BUF_GET_CHUNK,
    "property_size": 8,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT64,
  },
  SwitchPropertyID.USE_COMPACT_COMM_PROTOCOL_FOR_BROADCASTING_MOTION_EVENT: {
    "property_id": SwitchPropertyID.USE_COMPACT_COMM_PROTOCOL_FOR_BROADCASTING_MOTION_EVENT,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
  },
  SwitchPropertyID.DFU_CURRENT_TRANSACTION_ID: {
    "property_id": SwitchPropertyID.DFU_CURRENT_TRANSACTION_ID,
    "property_size": 2,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.DFU_CURRENT_TX_REQUEST: {
    "property_id": SwitchPropertyID.DFU_CURRENT_TX_REQUEST,
    "property_size": 2,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.DFU_CURRENT_MISSING_COUNT: {
    "property_id": SwitchPropertyID.DFU_CURRENT_MISSING_COUNT,
    "property_size": 2,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.DFU_MAX_MISSING_COUNT: {
    "property_id": SwitchPropertyID.DFU_MAX_MISSING_COUNT,
    "property_size": 2,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.DFU_TOTAL_MISSING_COUNT: {
    "property_id": SwitchPropertyID.DFU_TOTAL_MISSING_COUNT,
    "property_size": 2,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.DFU_BOOTLOADER_FSM_STATE: {
    "property_id": SwitchPropertyID.DFU_BOOTLOADER_FSM_STATE,
    "property_size": 2,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT16,
  },
  SwitchPropertyID.DFU_APPLICATION_FSM_STATE: {
    "property_id": SwitchPropertyID.DFU_APPLICATION_FSM_STATE,
    "property_size": 2,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT16,
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

enum SwitchLoadType {
  INVALID = 0x00,
  LOAD_TYPE_ONOFF = 0x01,
  LOAD_TYPE_DIMMABLE = 0x02,
  LOAD_TYPE_ALWAYS_ON = 0x03,
  LOAD_TYPE_ALWAYS_OFF = 0x04,
  LOAD_TYPE_SAFETY_DISABLE = 0x05,
}

enum LoadWattageStatus {
  UNDETERMINED = 0,
  STANDARD = 1,
  HIGH = 2,
  PENDING = 3, // Used during control compatibility check
}

enum LoadMagneticStatus {
  UNDETERMINED = 0,
  NOT_MAGNETIC = 1,
  MAGNETIC = 2,
  PENDING = 3, // Used during control compatibility check
}

struct MeshDeviceFirmware {
  1: string firmware_version
  2: i64 application_version
  3: i32 bootloader_version
}

struct TrackedReleaseStages {
  1: map<MeshDeviceType, hardware.SoftwareReleaseStage> tracked_release_stage_by_device_type
}

struct AvailableFirmwares {
  1: map<MeshDeviceType, map<hardware.SoftwareReleaseStage, MeshDeviceFirmware>> firmwares_by_type_and_stage
}

// Used in a BrilliantSwitchPeripheral migration: if during the migration we get
// a serialized string, we can deserialize it to this type, then convert it to
// a MeshDeviceFirmware, which we set the variable value to
struct MeshDeviceFirmwareOld {
  1: string firmware_version
  2: i32 application_version
  3: i16 bootloader_version
}

// Brilliant Switch cap touch tuning configurations

struct SwitchCapTouchButtonTuningParamsHwRev3 {
  1: i16 btn00_conversion_count
  2: i16 btn00_conversion_gain
  3: i16 btn00_prox_threshold
  4: i16 btn00_negative_touch_threshold
  5: i16 btn00_touch_debounce_threshold
  6: i16 btn00_count_filter_beta
  7: i16 btn00_e00_touch_threshold
  8: i16 btn00_e01_touch_threshold
  9: i16 btn00_e02_touch_threshold
  10: i16 btn00_e03_touch_threshold
  11: i16 btn00_e04_touch_threshold
}

struct SwitchCapTouchSliderTuningParamsHwRev3 {
  1: i16 sld00_conversion_count
  2: i16 sld00_conversion_gain
  3: i16 sld00_prox_threshold
  4: i16 sld00_negative_touch_threshold
  5: i16 sld00_touch_debounce_threshold
  6: i16 sld00_count_filter_beta
  7: i16 sld00_e00_touch_threshold
  8: i16 sld00_e01_touch_threshold
  9: i16 sld00_e02_touch_threshold
}

enum PublishConfigType {
  DISABLED = 0,
  PUBLISH_ON_DELTA = 1,
  PUBLISH_ON_DELTA_WITH_EXPONENTIAL_BACKOFF = 2,
}

struct PublishConfig {
  1: PublishConfigType type
  2: i16 profile # Profile field is actually 8 bits; we use i16 since thrift byte type is signed
}
