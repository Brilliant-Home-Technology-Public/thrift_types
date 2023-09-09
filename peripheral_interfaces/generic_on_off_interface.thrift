namespace py thrift_types.peripheral_interfaces.generic_on_off_interface
namespace java thrift_types.peripheral_interfaces.generic_on_off_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct GenericOnOffPeripheralInterface {
  1: bool on
  2: optional configuration.VariableNotificationConfiguration power_variable_notification_config
  3: optional configuration.RoomAssignment room_assignment
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'GenericOnOffPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.GENERIC_ON_OFF
}
