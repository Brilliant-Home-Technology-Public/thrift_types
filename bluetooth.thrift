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
const i64 SWITCH_MOTION_CONFIGURED_LOW_THRESHOLD = 20
const i64 SWITCH_MOTION_NOT_CONFIGURED_LOW_THRESHOLD = 100
const i64 SWITCH_MOTION_HIGH_THRESHOLD = 70

// Application version constants
const i64 SWITCH_DFU_TESTER_APP_VERSION = 4294967295
const i64 SWITCH_DVT_APP_VERSION = 7
const i64 PLUG_PROD_APP_VERSION = 202009170
// Technically publish configurations were supported as far back as switch/plug 202102010, but
// these versions did not support transaction IDs
const i64 SWITCH_PUBLISH_CONFIG_APP_VERSION = 202106220
const i64 PLUG_PUBLISH_CONFIG_APP_VERSION = 202105150
const i64 SWITCH_DFU_RELAY_APP_VERSION = 202102010
const i64 PLUG_DFU_RELAY_APP_VERSION = 202102010
const i64 SWITCH_MOTION_SCORE_255_APP_VERSION = 202103011
const i64 SWITCH_COMPACT_GET_COMM_PROTOCOL_APP_VERSION = 202203150
const i64 SWITCH_COMPACT_SET_COMM_PROTOCOL_APP_VERSION = 202203294
const i64 SWITCH_COMPACT_PUBLISH_COMM_PROTOCOL_APP_VERSION = 202203150
const i64 PLUG_COMPACT_GET_COMM_PROTOCOL_APP_VERSION = 202203293
const i64 PLUG_COMPACT_SET_COMM_PROTOCOL_APP_VERSION = 202203292
const i64 SWITCH_DCDC_REGULATOR_ENABLE_APP_VERSION = 202209130
const i64 SWITCH_DIM_SMOOTHING_APP_VERSION = 202209130

// We're using const bytes for unicast forwarding gestures rather than enums because we
// bitwise OR their values.
const byte UNICAST_FORWARDING_GESTURES_UNKNOWN = 0x00
const byte UNICAST_FORWARDING_GESTURES_ONOFF = 0x01
const byte UNICAST_FORWARDING_GESTURES_DIMMABLE = 0x02
const i32 SWITCH_CONFIG_SERVER_PUBLISH_CONFIG_FLASH_HANDLE_PREFIX = 0x7100
const i16 FLASH_HANDLE_UNSET = 0x0000
const i32 BROADCAST_UNICAST_ADDRESS = 65535

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

enum PublishConfigType {
  DISABLED = 0,
  PUBLISH_ON_DELTA = 1,
  PUBLISH_ON_DELTA_WITH_EXPONENTIAL_BACKOFF = 2,
}

enum SwitchLoadType {
  INVALID = 0x00,
  LOAD_TYPE_ONOFF = 0x01,
  LOAD_TYPE_DIMMABLE = 0x02,
  LOAD_TYPE_ALWAYS_ON = 0x03,
  LOAD_TYPE_ALWAYS_OFF = 0x04,
  LOAD_TYPE_SAFETY_DISABLE = 0x05,
}

enum LoadDimmingMode {
  INVALID = 0x00,
  TIME_BASED = 0x01,
  POWER_BASED = 0x02,
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

struct BleMeshPollingParams {
  1: i32 var_poll_interval_sec_if_unset
  2: i32 failed_polls_threshold
}

const BleMeshPollingParams DEFAULT_BLE_MESH_POLLING_PARAMS = {
  "var_poll_interval_sec_if_unset": 600,
  "failed_polls_threshold": 5,
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
  ALWAYS_ON                   = 0x01, // DEPRECATED 2023-04
  DIMMABLE                    = 0x02, // DEPRECATED 2023-04
  MINIMUM_DIM_LEVEL           = 0x03,
  MAXIMUM_DIM_LEVEL           = 0x04,
  MOTION_LOW_THRESHOLD        = 0x05,
  MOTION_HIGH_THRESHOLD       = 0x06,
  STATUS_LIGHT_MAX_BRIGHTNESS = 0x07,
  UNICAST_ADDRESS_FORWARDING  = 0x08,
  MOTION_TO_TRIGGER_ON        = 0x09, // DEPRECATED
  MOTION_TO_TRIGGER_OFF       = 0x0A, // DEPRECATED
  MOTION_SCORE                = 0x0B,
  MOTION_DETECTED             = 0x0C,
  TEMPERATURE                 = 0x0D,
  UUID                        = 0x0E,
  FIRMWARE_VERSION            = 0x0F,
  API_VERSION                 = 0x10,
  CURRENT_ZERO_CROSS          = 0x11,
  BREAK_DIMMING               = 0x12, // DEPRECATED
  POWER                       = 0x13,
  POWER_THRESHOLD             = 0x14, // DEPRECATED
  BREAK_CIRCUIT               = 0x15, // DEPRECATED
  CURRENT_SENSE_ADC_DATA      = 0x16, // DEPRECATED
  DEVICE_REVISION             = 0x17, // DEPRECATED
  ERROR_STATUS                = 0x18, // DEPRECATED
  DOUBLE_TAP_ENABLED          = 0x19,
  SWITCH_LOAD_TYPE            = 0x1A,
  UNICAST_FORWARDING_GESTURES = 0x1B,
  CAPTOUCH_AND_LOAD_CONNECTED = 0x1C,
  AMPS_IN_MA                  = 0x1D,
  AMPS_SAFE_MAX_THRESHOLD     = 0x1E,
  TEMP_SAFE_MAX_THRESHOLD     = 0x1F,
  MOTION_MIN_SMPLS_BTW_UPDATE = 0x20,
  DBG_LAST_CS_RESULT_STATUS   = 0x21, // DEPRECATED 2023-04
  DBG_COMPUTED_ZERO_POINT     = 0x22, // DEPRECATED 2023-04
  DBG_CYCLES_SINCE_ZC_SUCCESS = 0x23, // DEPRECATED 2023-04
  TUNE_MAX_DEVIATION_IDL_ZERO = 0x24,
  TUNE_ZC_NUM_PT_FOR_NOISE_REDUCTION   = 0x25,
  TUNE_MAX_DEV_BETWEEN_RUNS            = 0x26,
  REBOOT                      = 0x27,
  ENABLE_FWID_PACKET_BROADCAST= 0x28,
  DFU_LAST_TRANSFER_STATE     = 0x29, // DEPRECATED 2023-04
  DFU_LAST_RX_RESPONSE        = 0x2A, // DEPRECATED 2023-04
  DFU_END_TRANSFER_REASON     = 0x2B, // DEPRECATED 2023-04
  DFU_LAST_RX_PACKET          = 0x2C, // DEPRECATED 2023-04
  HARDWARE_REVISION           = 0x2D,
  CAPTOUCH_BTN00_TUNING_PARAM = 0x2E,
  CAPTOUCH_SLD00_TUNING_PARAM = 0x2F,
  PROXY_HAS_ACTIVE_CONNS      = 0x30, // DEPRECATED 2023-04
  PROXY_DISCONNECT_ALL        = 0x31,
  REPLAY_CACHE_CLEAR          = 0x32,
  REPLAY_CACHE_GET_NUM_ELEM   = 0x33, // DEPRECATED 2023-04
  REPLAY_CACHE_GET_CUR_IV     = 0x34, // DEPRECATED 2023-04
  REPLAY_CACHE_SET_GET_ELEM_IDX = 0x35 // DEPRECATED 2023-04
  REPLAY_CACHE_GET_ELEM_SRC   = 0x36, // DEPRECATED 2023-04
  REPLAY_CACHE_GET_ELEM_SEQ   = 0x37, // DEPRECATED 2023-04
  REPLAY_CACHE_GET_ELEM_IV    = 0x38, // DEPRECATED 2023-04
  DFU_RELAY_ENABLED           = 0x40,
  DFU_RELAY_APP_ID            = 0x41,
  DFU_RELAY_APP_VERSION       = 0x42,
  DBG_BUF_SET_NEXT_TRIGGER    = 0x43,
  DBG_BUF_AWAITING_NEXT_TRIGGER       = 0x44,
  DBG_BUF_CUR_CONTENTS_TRIGGER        = 0x45,
  DBG_BUF_SET_READ_CHUNK_IDX  = 0x46,
  DBG_BUF_GET_CHUNK           = 0x47,
  USE_COMPACT_COMM_PROTOCOL_FOR_PUBLISHING_VARIABLE = 0x48,
  LOAD_DIMMING_MODE           = 0x49,
  PACKET_COUNTER_FILTER       = 0x4A,
  FADE_IN_FRACTION            = 0x4B,
  FADE_IN_START_LEVEL         = 0x4C,
  FADE_IN_MAX_HALF_CYCLES     = 0x4D,
  DFU_STRICT_APP_VERSION      = 0x4E,
  DCDC_REGULATOR_ENABLE       = 0x4F,
  MOTION_MEDIAN_FILTER_SIZE   = 0x50,
  FADE_OUT_FRACTION           = 0x51,
  FADE_OUT_END_LEVEL          = 0x52,
  FADE_OUT_MAX_HALF_CYCLES    = 0x53,
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
  COMPACT_GET_PROPERTIES    = 0x11,
  COMPACT_SET_PROPERTIES    = 0x12,
  COMPACT_PROPERTIES_STATUS = 0x13,
}

enum SwitchGesture {
  RESERVED_FOR_FUTURE_USE = 0x00,
  FLICK                   = 0x01,
  SLIDE                   = 0x02,
  TAP                     = 0x03,
  DOUBLE_TAP              = 0x04,
  SLIDE_DONE              = 0x05,
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

enum SwitchPropertyFlashHandle {
  SWITCH_DIMMER_FLASH_HANDLE               = 0x7001,
  FLASH_HANDLE_ALWAYS_ON                   = 0x7002, // DEPRECATED
  FLASH_HANDLE_DIMMABLE                    = 0x7003, // DEPRECATED
  FLASH_HANDLE_MIN_DIM_LEVEL               = 0x7004,
  FLASH_HANDLE_MAX_DIM_LEVEL               = 0x7005,
  FLASH_HANDLE_MOTION_LOW_THRESHOLD        = 0x7006,
  FLASH_HANDLE_MOTION_HIGH_THRESHOLD       = 0x7007,
  FLASH_HANDLE_STATUS_LIGHT_MAX_DIM        = 0x7008,
  FLASH_HANDLE_UNICAST_FORWARD_ADDR        = 0x7009,
  FLASH_HANDLE_DOUBLE_TAP_ENABLED          = 0x700A,
  FLASH_HANDLE_SWITCH_LOAD_TYPE            = 0x700B,
  FLASH_HANDLE_UNICAST_FORWARDING_GESTURES = 0x700C,
  FLASH_HANDLE_CAPTOUCH_AND_LOAD_CONNECTED = 0x700D,
  FLASH_HANDLE_AMPS_SAFE_MAX_THRESHOLD     = 0x700E,
  FLASH_HANDLE_TEMP_SAFE_MAX_THRESHOLD     = 0x700F,
  FLASH_HANDLE_MOTION_MIN_SMPLS_BTW_UPDATE = 0x7010,
  FLASH_HANDLE_TUNE_MAX_DEV_FROM_IDL_ZERO  = 0x7011,
  FLASH_HANDLE_TUNE_ZC_PTS_FOR_NOISE_RED   = 0x7012,
  FLASH_HANDLE_TUNE_MAX_DEV_BTW_RUNS       = 0x7013,
  FLASH_HANDLE_CAPTOUCH_BTN00_TUNING_PARAMS = 0x7014,
  FLASH_HANDLE_CAPTOUCH_SLD00_TUNING_PARAMS = 0x7015,
  FLASH_HANDLE_USE_COMPACT_COMM_PROTOCOL_FOR_PUBLISHING_VARIABLE = 0x7016,
  FLASH_HANDLE_LOAD_DIMMING_MODE            = 0x7017,
  FLASH_HANDLE_MOTION_MEDIAN_FILTER_SIZE    = 0x7018,
  FLASH_HANDLE_FADE_IN_FRACTION             = 0x7019,
  FLASH_HANDLE_FADE_IN_START_LEVEL          = 0x701A,
  FLASH_HANDLE_FADE_IN_MAX_HALF_CYCLES      = 0x701B,
  FLASH_HANDLE_FADE_OUT_FRACTION            = 0x701C,
  FLASH_HANDLE_FADE_OUT_END_LEVEL           = 0x701D,
  FLASH_HANDLE_FADE_OUT_MAX_HALF_CYCLES     = 0x701E,
  FLASH_HANDLE_DCDC_REGULATOR_ENABLE        = 0x701F,
}

struct SwitchPropertySpec {
  1: byte property_id
  2: i16 property_size // in bytes
  3: optional i64 default_value
  4: optional i64 min_value
  5: optional i64 max_value
  7: optional MeshPropertyDataType property_type
  8: optional i16 flash_handle
  9: optional PublishConfigType publish_config_type
  10: optional bool deprecated
  11: optional list<byte> array_default_value
}

const map<SwitchPropertyID, SwitchPropertySpec> SWITCH_PROPERTY_SPECS = {
  SwitchPropertyID.ALWAYS_ON: {
    "property_id": SwitchPropertyID.ALWAYS_ON,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_ALWAYS_ON,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.DIMMABLE: {
    "property_id": SwitchPropertyID.DIMMABLE,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_DIMMABLE,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.MINIMUM_DIM_LEVEL: {
    "property_id": SwitchPropertyID.MINIMUM_DIM_LEVEL,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1000,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_MIN_DIM_LEVEL,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.MAXIMUM_DIM_LEVEL: {
    "property_id": SwitchPropertyID.MAXIMUM_DIM_LEVEL,
    "property_size": 2,
    "default_value": 1000,
    "min_value": 0,
    "max_value": 1000,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_MAX_DIM_LEVEL,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.MOTION_LOW_THRESHOLD: {
    "property_id": SwitchPropertyID.MOTION_LOW_THRESHOLD,
    "property_size": 1,
    "default_value": SWITCH_MOTION_CONFIGURED_LOW_THRESHOLD,
    "min_value": 0,
    "max_value": 100,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_MOTION_LOW_THRESHOLD,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.MOTION_HIGH_THRESHOLD: {
    "property_id": SwitchPropertyID.MOTION_HIGH_THRESHOLD,
    "property_size": 1,
    "default_value": SWITCH_MOTION_HIGH_THRESHOLD,
    "min_value": 0,
    "max_value": 100,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_MOTION_HIGH_THRESHOLD,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.STATUS_LIGHT_MAX_BRIGHTNESS: {
    "property_id": SwitchPropertyID.STATUS_LIGHT_MAX_BRIGHTNESS,
    "property_size": 2,
    "default_value": 1000,
    "min_value": 0,
    "max_value": 1000,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_STATUS_LIGHT_MAX_DIM,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.UNICAST_ADDRESS_FORWARDING: {
    "property_id": SwitchPropertyID.UNICAST_ADDRESS_FORWARDING,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_UNICAST_FORWARD_ADDR,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.MOTION_TO_TRIGGER_ON: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.MOTION_TO_TRIGGER_ON,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.MOTION_TO_TRIGGER_OFF: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.MOTION_TO_TRIGGER_OFF,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.MOTION_SCORE: {
    "property_id": SwitchPropertyID.MOTION_SCORE,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 100,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.MOTION_DETECTED: {
    "property_id": SwitchPropertyID.MOTION_DETECTED,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.PUBLISH_ON_DELTA,
    "deprecated": 0,
  },
  SwitchPropertyID.TEMPERATURE: {
    "property_id": SwitchPropertyID.TEMPERATURE,
    "property_size": 2,
    "default_value": 32767,
    "min_value": -32768,
    "max_value": 32767,
    "property_type": MeshPropertyDataType.INT16,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.UUID: {
    "property_id": SwitchPropertyID.UUID,
    "property_size": 16,
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.FIRMWARE_VERSION: {
    "property_id": SwitchPropertyID.FIRMWARE_VERSION,
    "property_size": 8, // SoftDevice (2 bytes) + Bootloader (2 bytes) + App (4 bytes)
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.API_VERSION: {
    // This property is unused
    "property_id": SwitchPropertyID.API_VERSION,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 255,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.CURRENT_ZERO_CROSS: {
    "property_id": SwitchPropertyID.CURRENT_ZERO_CROSS,
    "property_size": 2,
    "default_value": 0xFFFF,
    "min_value": 0,
    "max_value": 0xFFFF,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.BREAK_DIMMING: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.BREAK_DIMMING,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.POWER: {
    "property_id": SwitchPropertyID.POWER,
    "property_size": 2,
    "default_value": 0xFFFF, // units in 1/10 of a watt
    "min_value": 0,
    "max_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.POWER_THRESHOLD: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.POWER_THRESHOLD,
    "property_size": 2,
    "default_value": 0, // units in 1/10 of a watt
    "min_value": 0,
    "max_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.BREAK_CIRCUIT: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.BREAK_CIRCUIT,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 3,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.CURRENT_SENSE_ADC_DATA: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.CURRENT_SENSE_ADC_DATA,
    "property_size": 256, // 128 values of 2 byte adc readings
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.DEVICE_REVISION: {
    // This property has been deprecated
    "property_id": SwitchPropertyID.DEVICE_REVISION,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 255,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.ERROR_STATUS: {
    // This property is unused
    "property_id": SwitchPropertyID.ERROR_STATUS,
    "property_size": 1,
    "default_value": 0, // SwitchErrorStatus value
    "min_value": 0,
    "max_value": 255,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.DOUBLE_TAP_ENABLED: {
    "property_id": SwitchPropertyID.DOUBLE_TAP_ENABLED,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_DOUBLE_TAP_ENABLED,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.SWITCH_LOAD_TYPE: {
    "property_id": SwitchPropertyID.SWITCH_LOAD_TYPE,
    "property_size": 1,
    "default_value": SwitchLoadType.LOAD_TYPE_ONOFF,
    "min_value": 0,
    "max_value": 5,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_SWITCH_LOAD_TYPE,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.UNICAST_FORWARDING_GESTURES: {
    "property_id": SwitchPropertyID.UNICAST_FORWARDING_GESTURES,
    "property_size": 1,
    "default_value": 3,
    "min_value": 0,
    "max_value": 3,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_UNICAST_FORWARDING_GESTURES,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.CAPTOUCH_AND_LOAD_CONNECTED: {
    "property_id": SwitchPropertyID.CAPTOUCH_AND_LOAD_CONNECTED,
    "property_size": 1,
    "default_value": 1,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_CAPTOUCH_AND_LOAD_CONNECTED,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.AMPS_IN_MA: {
    "property_id": SwitchPropertyID.AMPS_IN_MA,
    "property_size": 2,
    "default_value": 0xFFFF,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.AMPS_SAFE_MAX_THRESHOLD: {
    "property_id": SwitchPropertyID.AMPS_SAFE_MAX_THRESHOLD,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_AMPS_SAFE_MAX_THRESHOLD,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.TEMP_SAFE_MAX_THRESHOLD: {
    "property_id": SwitchPropertyID.TEMP_SAFE_MAX_THRESHOLD,
    "property_size": 2,
    "default_value": 600,
    "min_value": -32768,
    "max_value": 32767,
    "property_type": MeshPropertyDataType.INT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_TEMP_SAFE_MAX_THRESHOLD,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.MOTION_MIN_SMPLS_BTW_UPDATE: {
    "property_id": SwitchPropertyID.MOTION_MIN_SMPLS_BTW_UPDATE,
    "property_size": 1,
    "default_value": 50,
    "min_value": 0,
    "max_value": 255,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_MOTION_MIN_SMPLS_BTW_UPDATE,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.DBG_LAST_CS_RESULT_STATUS: {
    "property_id": SwitchPropertyID.DBG_LAST_CS_RESULT_STATUS,
    "property_size": 1,
    "default_value": 0xFF,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.DBG_COMPUTED_ZERO_POINT: {
    "property_id": SwitchPropertyID.DBG_COMPUTED_ZERO_POINT,
    "property_size": 2,
    "default_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.DBG_CYCLES_SINCE_ZC_SUCCESS: {
    "property_id": SwitchPropertyID.DBG_CYCLES_SINCE_ZC_SUCCESS,
    "property_size": 2,
    "default_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.TUNE_MAX_DEVIATION_IDL_ZERO: {
    "property_id": SwitchPropertyID.TUNE_MAX_DEVIATION_IDL_ZERO,
    "property_size": 2,
    "default_value": 32,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_TUNE_MAX_DEV_FROM_IDL_ZERO,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.TUNE_ZC_NUM_PT_FOR_NOISE_REDUCTION: {
    "property_id": SwitchPropertyID.TUNE_ZC_NUM_PT_FOR_NOISE_REDUCTION,
    "property_size": 2,
    "default_value": 15,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_TUNE_ZC_PTS_FOR_NOISE_RED,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.TUNE_MAX_DEV_BETWEEN_RUNS: {
    "property_id": SwitchPropertyID.TUNE_MAX_DEV_BETWEEN_RUNS,
    "property_size": 2,
    "default_value": 96,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_TUNE_MAX_DEV_BTW_RUNS,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.REBOOT: {
    "property_id": SwitchPropertyID.REBOOT,
    "property_size": 1,
    "default_value": 0,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.ENABLE_FWID_PACKET_BROADCAST: {
    "property_id": SwitchPropertyID.ENABLE_FWID_PACKET_BROADCAST,
    "default_value": 1,
    "property_size": 1,
    "default_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.DFU_LAST_TRANSFER_STATE: {
    "property_id": SwitchPropertyID.DFU_LAST_TRANSFER_STATE,
    "property_size": 16,
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.DFU_LAST_RX_RESPONSE: {
    "property_id": SwitchPropertyID.DFU_LAST_RX_RESPONSE,
    "default_value": 0
    "property_size": 4,
    "property_type": MeshPropertyDataType.UINT32,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.DFU_END_TRANSFER_REASON: {
    "property_id": SwitchPropertyID.DFU_END_TRANSFER_REASON,
    "default_value": 0
    "property_size": 1,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.DFU_LAST_RX_PACKET: {
    "property_id": SwitchPropertyID.DFU_LAST_RX_PACKET,
    "property_size": 20,
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.HARDWARE_REVISION: {
    "property_id": SwitchPropertyID.HARDWARE_REVISION,
    "property_size": 4,
    "default_value": 4294967295,
    "property_type": MeshPropertyDataType.UINT32,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.CAPTOUCH_BTN00_TUNING_PARAM: {
    "property_id": SwitchPropertyID.CAPTOUCH_BTN00_TUNING_PARAM,
    "property_size": 15,
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_CAPTOUCH_BTN00_TUNING_PARAMS,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
    "array_default_value": [
      0x20, // BTN00 Conversion Count (lower byte)
      0x03, // BTN00 Conversion Count (upper byte)
      0x64, // BTN00 Conversion Gain (lower byte)
      0x00, // BTN00 Conversion Gain (upper byte)
      0x06, // BTN00 Proximity Threshold (lower byte)
      0x00, // BTN00 Proximity Threshold (upper byte)
      0x1E, // BTN00 Negative Touch Threshold (lower byte)
      0x00, // BTN00 Negative Touch Threshold (upper byte)
      0x03, // BTN00 Touch Debounce Threshold
      0x02, // BTN00 Count Filter Beta
      0x05, // BTN00 E00 Touch Threshold
      0x05, // BTN00 E01 Touch Threshold
      0x05, // BTN00 E02 Touch Threshold
      0x05, // BTN00 E03 Touch Threshold
      0x05  // BTN00 E04 Touch Threshold
    ],
  },
  SwitchPropertyID.CAPTOUCH_SLD00_TUNING_PARAM: {
    "property_id": SwitchPropertyID.CAPTOUCH_SLD00_TUNING_PARAM,
    "property_size": 13,
    "property_type": MeshPropertyDataType.UINT8_ARRAY,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_CAPTOUCH_SLD00_TUNING_PARAMS,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
    "array_default_value": [
      0x2C, // SLD00 Conversion Count (lower byte)
      0x01, // SLD00 Conversion Count (upper byte)
      0x64, // SLD00 Conversion Gain (lower byte)
      0x00, // SLD00 Conversion Gain (upper byte)
      0x02, // SLD00 Proximity Threshold (lower byte)
      0x00, // SLD00 Proximity Threshold (upper byte)
      0x1E, // SLD00 Negative Touch Threshold (lower byte)
      0x00, // SLD00 Negative Touch Threshold (upper byte)
      0x02, // SLD00 Touch Debounce Threshold
      0x01, // SLD00 Count Filter Beta
      0x02, // SLD00 E00 Touch Threshold
      0x02, // SLD00 E01 Touch Threshold
      0x02  // SLD00 E02 Touch Threshold
    ],
  },
  SwitchPropertyID.PROXY_HAS_ACTIVE_CONNS: {
    "property_id": SwitchPropertyID.PROXY_HAS_ACTIVE_CONNS,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.PROXY_DISCONNECT_ALL: {
    "property_id": SwitchPropertyID.PROXY_DISCONNECT_ALL,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.REPLAY_CACHE_CLEAR: {
    "property_id": SwitchPropertyID.REPLAY_CACHE_CLEAR,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.REPLAY_CACHE_GET_NUM_ELEM: {
    "property_id": SwitchPropertyID.REPLAY_CACHE_GET_NUM_ELEM,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 255,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.REPLAY_CACHE_GET_CUR_IV: {
    "property_id": SwitchPropertyID.REPLAY_CACHE_GET_CUR_IV,
    "property_size": 4,
    "default_value": 4294967295,
    "min_value": 0,
    "max_value": 4294967295,
    "property_type": MeshPropertyDataType.UINT32,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.REPLAY_CACHE_SET_GET_ELEM_IDX: {
    "property_id": SwitchPropertyID.REPLAY_CACHE_SET_GET_ELEM_IDX,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 255,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.REPLAY_CACHE_GET_ELEM_SRC: {
    "property_id": SwitchPropertyID.REPLAY_CACHE_GET_ELEM_SRC,
    "property_size": 2,
    "default_value": 65535,
    "min_value": 0,
    "max_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.REPLAY_CACHE_GET_ELEM_SEQ: {
    "property_id": SwitchPropertyID.REPLAY_CACHE_GET_ELEM_SEQ,
    "property_size": 4,
    "default_value": 4294967295,
    "min_value": 0,
    "max_value": 4294967295,
    "property_type": MeshPropertyDataType.UINT32,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.REPLAY_CACHE_GET_ELEM_IV: {
    "property_id": SwitchPropertyID.REPLAY_CACHE_GET_ELEM_IV,
    "property_size": 2,
    "default_value": 65535,
    "min_value": 0,
    "max_value": 65535,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 1,
  },
  SwitchPropertyID.DFU_RELAY_ENABLED: {
    "property_id": SwitchPropertyID.DFU_RELAY_ENABLED,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.DFU_RELAY_APP_ID: {
    "property_id": SwitchPropertyID.DFU_RELAY_APP_ID,
    "property_size": 2,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.DFU_RELAY_APP_VERSION: {
    "property_id": SwitchPropertyID.DFU_RELAY_APP_VERSION,
    "property_size": 4,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT32,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.DBG_BUF_SET_NEXT_TRIGGER: {
    "property_id": SwitchPropertyID.DBG_BUF_SET_NEXT_TRIGGER,
    "property_size": 1,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.DBG_BUF_AWAITING_NEXT_TRIGGER: {
    "property_id": SwitchPropertyID.DBG_BUF_AWAITING_NEXT_TRIGGER,
    "property_size": 1,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.DBG_BUF_CUR_CONTENTS_TRIGGER: {
    "property_id": SwitchPropertyID.DBG_BUF_CUR_CONTENTS_TRIGGER,
    "property_size": 1,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.DBG_BUF_SET_READ_CHUNK_IDX: {
    "property_id": SwitchPropertyID.DBG_BUF_SET_READ_CHUNK_IDX,
    "property_size": 1,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.DBG_BUF_GET_CHUNK: {
    "property_id": SwitchPropertyID.DBG_BUF_GET_CHUNK,
    "property_size": 8,
    "default_value": 0,
    "property_type": MeshPropertyDataType.UINT64,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.USE_COMPACT_COMM_PROTOCOL_FOR_PUBLISHING_VARIABLE: {
    "property_id": SwitchPropertyID.USE_COMPACT_COMM_PROTOCOL_FOR_PUBLISHING_VARIABLE,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_USE_COMPACT_COMM_PROTOCOL_FOR_PUBLISHING_VARIABLE,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.LOAD_DIMMING_MODE: {
    "property_id": SwitchPropertyID.LOAD_DIMMING_MODE,
    "property_size": 1,
    "default_value": LoadDimmingMode.TIME_BASED,
    "min_value": 0,
    "max_value": 2,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_LOAD_DIMMING_MODE,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.MOTION_MEDIAN_FILTER_SIZE: {
    "property_id": SwitchPropertyID.MOTION_MEDIAN_FILTER_SIZE,
    "property_size": 1,
    "default_value": 1,
    "min_value": 0,
    "max_value": 32,
    "property_type": MeshPropertyDataType.UINT8,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_MOTION_MEDIAN_FILTER_SIZE,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.PACKET_COUNTER_FILTER: {
    "property_id": SwitchPropertyID.PACKET_COUNTER_FILTER,
    "property_size": 4,
    "default_value": 0,
    "min_value": 0,
    "max_value": 0xFFFFFFFF,
    "property_type": MeshPropertyDataType.UINT32,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.FADE_IN_FRACTION: { // Packed as [Numerator][Denominator], both are 16 bit
    "property_id": SwitchPropertyID.FADE_IN_FRACTION,
    "property_size": 4,
    "default_value": 0x000103E8, // Numerator = 1000 (0x03E8), Denominator = 1 (0x0001). Order reversed due to little endian
    "min_value": 0x00010001, // Numerator = 1, Denominator = 1. These validators don't really work for this application
    "max_value": 0xFFFFFFFF,
    "property_type": MeshPropertyDataType.UINT32,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_FADE_IN_FRACTION,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.FADE_IN_START_LEVEL: {
    "property_id": SwitchPropertyID.FADE_IN_START_LEVEL,
    "property_size": 2,
    "default_value": 100,
    "min_value": 0,
    "max_value": 1000,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_FADE_IN_START_LEVEL,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.FADE_IN_MAX_HALF_CYCLES: {
    "property_id": SwitchPropertyID.FADE_IN_MAX_HALF_CYCLES,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 0xFFFF,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_FADE_IN_MAX_HALF_CYCLES,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.DFU_STRICT_APP_VERSION: {
    "property_id": SwitchPropertyID.DFU_STRICT_APP_VERSION,
    "property_size": 4,
    "default_value": 0,
    "min_value": 0,
    "max_value": 0xFFFFFFFF,
    "property_type": MeshPropertyDataType.UINT32,
    "flash_handle": FLASH_HANDLE_UNSET,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.FADE_OUT_FRACTION: { // Packed as [Numerator][Denominator], both are 16 bits
    "property_id": SwitchPropertyID.FADE_OUT_FRACTION,
    "property_size": 4,
    "default_value": 0x000103E8, // Numerator = 1000 (0x03E8), Denominator = 1 (0x0001). Order reversed due to little endian
    "min_value": 0x00010001,
    "max_value": 0xFFFFFFFF,
    "property_type": MeshPropertyDataType.UINT32,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_FADE_OUT_FRACTION,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.FADE_OUT_END_LEVEL: {
    "property_id": SwitchPropertyID.FADE_OUT_END_LEVEL,
    "property_size": 2,
    "default_value": 100,
    "min_value": 50,
    "max_value": 1000,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_FADE_OUT_END_LEVEL,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.FADE_OUT_MAX_HALF_CYCLES: {
    "property_id": SwitchPropertyID.FADE_OUT_MAX_HALF_CYCLES,
    "property_size": 2,
    "default_value": 0,
    "min_value": 0,
    "max_value": 0xFFFF,
    "property_type": MeshPropertyDataType.UINT16,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_FADE_OUT_MAX_HALF_CYCLES,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
  },
  SwitchPropertyID.DCDC_REGULATOR_ENABLE: {
    "property_id": SwitchPropertyID.DCDC_REGULATOR_ENABLE,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 0x01,
    "property_type": MeshPropertyDataType.BOOL,
    "flash_handle": SwitchPropertyFlashHandle.FLASH_HANDLE_DCDC_REGULATOR_ENABLE,
    "publish_config_type": PublishConfigType.DISABLED,
    "deprecated": 0,
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
  SwitchGesture.SLIDE_DONE: {
    "property_id": SwitchGesture.SLIDE_DONE,
    "property_size": 0,
  },
}

const set<SwitchPropertyID> PLUG_SUPPORTED_PROPERTIES = [
    SwitchPropertyID.STATUS_LIGHT_MAX_BRIGHTNESS,
    SwitchPropertyID.UUID,
    SwitchPropertyID.FIRMWARE_VERSION,
    SwitchPropertyID.REBOOT,
    SwitchPropertyID.ENABLE_FWID_PACKET_BROADCAST,
    SwitchPropertyID.DFU_LAST_TRANSFER_STATE,
    SwitchPropertyID.DFU_LAST_RX_RESPONSE,
    SwitchPropertyID.DFU_END_TRANSFER_REASON,
    SwitchPropertyID.DFU_LAST_RX_PACKET,
    SwitchPropertyID.HARDWARE_REVISION,
    SwitchPropertyID.DFU_RELAY_ENABLED,
    SwitchPropertyID.DFU_RELAY_APP_ID,
    SwitchPropertyID.DFU_RELAY_APP_VERSION,
]

enum LoadWattageStatus {
  UNDETERMINED = 0,
  STANDARD = 1,
  HIGH = 2,
  PENDING = 3, // Used during control compatibility check
  MEDIUM = 4, // Wattage is high enough to require mandatory fades but not safety disable mode
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

struct PublishConfig {
  1: PublishConfigType type
  2: i16 profile # Profile field is actually 8 bits; we use i16 since thrift byte type is signed
}

enum ConfirmMeshPropertyResult {
  MISMATCHES = 0,
  EQUALS = 1,
  REQUEST_TIMED_OUT = 2,
}

struct SetAckStats {
  1: i16 num_success
  2: i16 num_timeout
  3: i16 num_mismatch
  4: i16 num_generic_failure
  5: i16 num_sets_attempted
}
