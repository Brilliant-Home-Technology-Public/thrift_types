namespace py thrift_types.peripheral_interfaces.switch_ui_interface
namespace java thrift_types.peripheral_interfaces.switch_ui_interface

include "../message_bus.thrift"
include "../configuration.thrift"
include "peripheral_interface.thrift"

struct SwitchUiPeripheralInterface {
  1: string intercom_target
  2: string intercom_state
  3: string intercom_sdp
  4: bool active
  5: configuration.IntercomParameters intercom_parameters
  6: string request_reset
  7: bool unsupported_configuration
  8: configuration.HomeScreenConfig home_screen_config
  9: bool child_lock_enabled
  10: bool require_automatic_configuration
  11: bool enable_post_solar_demo
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'SwitchUiPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.UI,
}