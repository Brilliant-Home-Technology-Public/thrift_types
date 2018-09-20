namespace py thrift_types.peripheral_interfaces.art_configuration_interface
namespace java thrift_types.peripheral_interfaces.art_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ArtConfigurationPeripheralInterface {
  1: bool display_time_date
  2: i32 display_frequency
  3: bool on
  4: configuration.RoomAssignment room_assignment
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ArtConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.ART_CONFIGURATION,
  'dynamic_variable_prefix': 'library:',
  'dynamic_variable_ttype': 'configuration.ArtLibraryConfig'
}
