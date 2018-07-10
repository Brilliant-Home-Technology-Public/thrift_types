namespace py thrift_types.peripheral_interfaces.device_configuration_interface
namespace java thrift_types.peripheral_interfaces.device_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct DeviceConfigurationPeripheralInterface {
  1: bool enable_master_control
  2: configuration.Trigger software_update_poll_time
  3: bool enable_intercom_audio
  4: bool enable_intercom
  5: bool video_is_upright
  6: bool enable_demo_mode
  7: configuration.GestureConfigs gesture_configs
  8: configuration.RoomAssignment room_assignment
  9: bool receive_intercom_broadcasts
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'DeviceConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.DEVICE_CONFIGURATION,
  'dynamic_variable_prefix': configuration.CAP_TOUCH_CONFIG_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.CapTouchSliderConfig',
}
