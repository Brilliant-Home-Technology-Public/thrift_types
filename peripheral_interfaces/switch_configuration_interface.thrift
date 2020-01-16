namespace py thrift_types.peripheral_interfaces.switch_configuration_interface
namespace java thrift_types.peripheral_interfaces.switch_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct SwitchConfigurationPeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
  3: i32 status_light_max_brightness
  4: configuration.CapTouchSliderConfig slider_config
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'SwitchConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SWITCH_CONFIGURATION,
}
