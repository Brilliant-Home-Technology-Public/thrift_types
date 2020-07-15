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
}

struct MeshUpdateStates {
  1: list<MeshUpdateStateInfo> mesh_update_states
}
