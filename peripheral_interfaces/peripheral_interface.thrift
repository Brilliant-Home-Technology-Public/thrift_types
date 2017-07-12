namespace py thrift_types.peripheral_interfaces.peripheral_interface

include "../message_bus.thrift"

struct PeripheralInterface {
  1: string peripheral_interface_name
  2: message_bus.PeripheralType peripheral_type
  3: string dynamic_variable_prefix
}

