namespace py thrift_types.peripheral_interfaces.motion_detection_config_interface
namespace java thrift_types.peripheral_interfaces.motion_detection_config_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct MotionDetectionConfigPeripheralInterface {
  1: bool trigger_screen
  2: i32 trigger_screen_off_timeout_sec
  3: bool trigger_screen_off
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'MotionDetectionConfigPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.MOTION_DETECTION_CONFIGURATION,
  'dynamic_variable_prefix': configuration.LIGHT_MOTION_CONFIG_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.LightMotionConfig',
}
