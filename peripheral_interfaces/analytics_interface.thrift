namespace py thrift_types.peripheral_interfaces.analytics_interface
namespace java thrift_types.peripheral_interfaces.analytics_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct AnalyticsPeripheralInterface {
  1: string socket_path
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'AnalyticsPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.ANALYTICS
}

