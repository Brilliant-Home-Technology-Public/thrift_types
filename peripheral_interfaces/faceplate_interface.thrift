namespace py thrift_types.peripheral_interfaces.faceplate_interface
namespace java thrift_types.peripheral_interfaces.faceplate_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct FaceplatePeripheralInterface {
  1: bool movement_detected
  2: i32 lux
  3: double coldest_internal_temperature
  4: double hottest_internal_temperature
  5: i32 pir_motion_score
  6: i32 pir_motion_detection_low_threshold
  7: i32 pir_motion_detection_high_threshold
  8: bool led_on
  9: bool enable_pir_motion_score
  10: bool enable_lux
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'FaceplatePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.MOTION_SENSOR,
}
