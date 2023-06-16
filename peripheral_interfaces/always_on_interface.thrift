namespace py thrift_types.peripheral_interfaces.always_on_interface
namespace java thrift_types.peripheral_interfaces.always_on_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct AlwaysOnPeripheralInterface {
  1: optional configuration.VariableNotificationConfiguration power_variable_notification_config
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'AlwaysOnPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.ALWAYS_ON
}
