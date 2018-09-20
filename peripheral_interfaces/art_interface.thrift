namespace py thrift_types.peripheral_interfaces.art_interface
namespace java thrift_types.peripheral_interfaces.art_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ArtPeripheralInterface {
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ArtPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.ART,
  'dynamic_variable_prefix': 'library:',
  'dynamic_variable_ttype': 'configuration.ArtLibrary'
}
