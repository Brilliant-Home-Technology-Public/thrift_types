namespace py thrift_types.bluetooth_common
namespace java thrift_types.bluetooth_common

const i16 FLASH_HANDLE_UNSET = 0x0000

enum SwitchPropertyFlashHandle {
  SWITCH_DIMMER_FLASH_HANDLE               = 0x7001,
  FLASH_HANDLE_ALWAYS_ON                   = 0x7002,
  FLASH_HANDLE_DIMMABLE                    = 0x7003,
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
}

enum SwitchLoadType {
  INVALID = 0x00,
  LOAD_TYPE_ONOFF = 0x01,
  LOAD_TYPE_DIMMABLE = 0x02,
  LOAD_TYPE_ALWAYS_ON = 0x03,
  LOAD_TYPE_ALWAYS_OFF = 0x04,
  LOAD_TYPE_SAFETY_DISABLE = 0x05,
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

enum PublishConfigType {
  DISABLED = 0,
  PUBLISH_ON_DELTA = 1,
  PUBLISH_ON_DELTA_WITH_EXPONENTIAL_BACKOFF = 2,
}

struct ServicePropertySpec {
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
  