namespace py thrift_types.peripheral_interfaces.switch_configuration_interface
namespace java thrift_types.peripheral_interfaces.switch_configuration_interface

include "../bluetooth.thrift"
include "../configuration.thrift"
include "../mesh_dfu.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct SwitchConfigurationPeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
  3: i32 status_light_max_brightness
  4: configuration.CapTouchSliderConfig slider_config
  5: bluetooth.MeshDeviceFirmware firmware_version
  6: mesh_dfu.MeshDfuPacket last_advertised_dfu_packet
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'SwitchConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SWITCH_CONFIGURATION,
  'dynamic_variable_prefix': configuration.LIGHT_MOTION_CONFIG_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.LightMotionConfig',
}
