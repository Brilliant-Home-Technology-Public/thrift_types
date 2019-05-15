namespace py thrift_types.peripheral_interfaces.art_configuration_interface
namespace java thrift_types.peripheral_interfaces.art_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ArtConfigurationPeripheralInterface {
  1: bool display_time_date
  3: bool on
  4: optional configuration.RoomAssignment room_assignment
  5: string display_name
  6: optional bool use_global_art_config
  7: optional bool music_widget_on_lock
  8: optional bool device_status_on_lock
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ArtConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.ART_CONFIGURATION,
  'dynamic_variable_prefix': 'library:',
  'dynamic_variable_ttype': 'configuration.ArtLibraryConfig'
}
