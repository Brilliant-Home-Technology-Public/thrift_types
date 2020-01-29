namespace py thrift_types.peripheral_interfaces.notification_interface
namespace java thrift_types.peripheral_interfaces.notification_interface

include "../notification.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct NotificationPeripheralInterface {
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'NotificationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.NOTIFICATION,
  'dynamic_variable_prefix': notification.NOTIFICATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'notification.BrilliantNotification'
}
