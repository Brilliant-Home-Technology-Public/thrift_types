namespace py thrift_types.peripheral_interfaces.hardware_interface
namespace java thrift_types.peripheral_interfaces.hardware_interface

include "../message_bus.thrift"
include "../configuration.thrift"
include "../hardware.thrift"
include "peripheral_interface.thrift"

struct HardwarePeripheralInterface {
  1: i32 screen_brightness
  2: bool screen_on
  3: i32 output_volume
  4: bool muted
  5: configuration.ExecutionTimeRange screen_on_range
  6: string current_boot_version
  7: i64 current_boot_version_timestamp
  8: string next_boot_version
  9: i32 software_support_status
  10: i32 cpu_temperature
  11: bool low_temp_mode
  12: i32 num_cap_touch_sliders
  13: bool camera_on
  14: string current_release_tag
  15: hardware.DisplayOption screen_on_config
  16: bool duck_speaker
  17: hardware.SoftwareReleaseStage tracked_release_stage
  18: hardware.FilesystemStatus rootfs_status
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'HardwarePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.HARDWARE,
}
