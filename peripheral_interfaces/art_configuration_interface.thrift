namespace py thrift_types.peripheral_interfaces.art_configuration_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ArtConfigurationPeripheralInterface {
  1: string display_name
  2: i32 display_time_date
  3: i32 display_frequency
  4: bool on
  5: bool use_global_art_config
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ArtConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.ART_CONFIGURATION,
  'dynamic_variable_prefix': 'library:',
  'dynamic_variable_ttype': 'configuration.ArtLibraryConfig'
}
