namespace py thrift_types.peripheral_interfaces.peripheral_interface

include "../message_bus.thrift"

struct PeripheralInterface {
  1: string peripheral_interface_name            # Thrift structure that defines the peripheral
                                                 # interface variables
  2: message_bus.PeripheralType peripheral_type
  3: optional string dynamic_variable_prefix
  4: optional string dynamic_variable_ttype      # Thrift type for dynamic variables. This
                                                 # should be an absolute path starting from
                                                 # the thrift_types root directory
}

