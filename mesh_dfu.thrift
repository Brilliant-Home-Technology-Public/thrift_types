namespace py thrift_types.mesh_dfu
namespace java thrift_types.mesh_dfu

const i32 MESH_DEVICE_BOOTLOADER_ID = 1

enum MeshDfuHexType {
  SOFTDEVICE = 1
  BOOTLOADER = 2
  SOFTDEVICE_BOOTLOADER = 3
  APPLICATION = 4
  MESH_BOOTLOADER_INFO = 8
}

enum MeshDfuApplicationID {
  UNKNOWN = 0
  SWITCH = 1
  PLUG = 2
}

// Holds the state for the DFU state machine
struct MeshUpdateStateInfo {
  1: i64 transaction_id
  2: i64 update_start_time_ms
  3: MeshDfuHexType hex_type
  4: MeshDfuApplicationID target_id
  5: i32 total_firmware_packet_count
  6: i64 target_version
  7: set<i32> requested_firmware_segments = []
  8: set<i32> resent_firmware_segments = []
  9: i32 skip_packet_trigger_resend_count = 0
  // The index of the update packet stream
  10: optional i32 last_sent_packet_index
  // The last index of the update packet stream that the state machine intentionally skips
  11: optional i32 last_skipped_packet_index
  12: optional i32 num_permitted_unrequested_skipped_packets = 0
  13: optional bool expect_acknowledgements
}

struct MeshUpdateStates {
  1: list<MeshUpdateStateInfo> mesh_update_states
}

enum MeshDfuPacketType {
  UNKNOWN = 0
  FIRMWARE_ID = 1
  STATE = 2
  DATA = 3
  DATA_REQUEST = 4
  DATA_RESPONSE = 5
}

struct MeshDfuPacket {
  1: MeshDfuPacketType packet_type
  2: binary raw_data
  // Version info (FIRMWARE_ID + STATE types)
  3: optional MeshDfuApplicationID application_id
  4: optional i64 application_version
  // TODO Add SoftDevice/Bootloader version
  5: optional i64 network_id
  // Update type (STATE)
  6: optional MeshDfuHexType hex_type
  // Transaction (STATE + DATA/DATA_REQUEST/DATA_RESPONSE)
  7: optional i64 transaction_id
  // Firmware segment block (DATA/DATA_REQUEST/DATA_RESPONSE)
  8: optional i32 segment_index
}
