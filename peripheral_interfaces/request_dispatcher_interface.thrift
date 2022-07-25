namespace py thrift_types.peripheral_interfaces.request_dispatcher_interface
namespace java thrift_types.peripheral_interfaces.request_dispatcher_interface

include "../message_bus.thrift"
include "../request_dispatcher.thrift"
include "peripheral_interface.thrift"

struct RequestDispatcherPeripheralInterface {
  1: request_dispatcher.DispatchRequest dispatch_request
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'RequestDispatcherPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.REQUEST_DISPATCHER,
}
