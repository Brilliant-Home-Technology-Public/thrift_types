namespace py thrift_types.peripheral_interfaces.property_interface
namespace java thrift_types.peripheral_interfaces.property_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct PropertyPeripheralInterface {
  1: bool is_multifamily
}

const peripheral_interface.PeripheralInterface peripheral = {
  "peripheral_interface_name": "PropertyPeripheralInterface",
  "peripheral_type": message_bus.PeripheralType.PROPERTY,
}
