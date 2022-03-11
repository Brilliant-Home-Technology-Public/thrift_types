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
  7: optional string mac_address
  8: i32 hardware_revision
  9: bluetooth.SwitchCapTouchButtonTuningParamsHwRev3 captouch_btn00_tuning_param
  10: bluetooth.SwitchCapTouchSliderTuningParamsHwRev3 captouch_sld00_tuning_param
  11: string peripheral_info_id
  12: optional i64 last_firmware_updated_timestamp
  13: bool compact_comm_protocol_for_publishing_variable_enabled
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'SwitchConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SWITCH_CONFIGURATION,
  'dynamic_variable_prefix': configuration.LIGHT_MOTION_CONFIG_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.LightMotionConfig',
}
