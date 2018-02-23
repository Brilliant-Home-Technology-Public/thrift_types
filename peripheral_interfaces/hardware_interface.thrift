namespace py thrift_types.peripheral_interfaces.hardware_interface
namespace java thrift_types.peripheral_interfaces.hardware_interface

include "../message_bus.thrift"
include "../configuration.thrift"
include "peripheral_interface.thrift"

struct HardwarePeripheralInterface {
  1: i32 screen_brightness
  2: bool screen_on
  3: i32 output_volume
  4: bool muted
  5: bool screen_always_on
  6: configuration.ExecutionTimeRange screen_on_range
  7: string current_boot_version
  8: i64 current_boot_version_timestamp
  9: string next_boot_version
  10: i32 software_support_status
  11: i32 cpu_temperature
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'HardwarePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.HARDWARE,
}