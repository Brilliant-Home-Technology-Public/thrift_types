namespace py thrift_types.peripheral_interfaces.art_configuration_interface
namespace java thrift_types.peripheral_interfaces.art_configuration_interface

include "../client_ui.thrift"
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
  9: optional bool weather_widget_on_lock
  10: optional configuration.LockScreenClimateConfig lock_screen_climate_config
  11: optional configuration.UniquePeripheralID security_system_peripheral_on_lock
  12: optional client_ui.ControlLockScreenWidgetConfiguration lock_screen_widget_configuration
  13: optional configuration.ArtRotationConfig art_rotation_config
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ArtConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.ART_CONFIGURATION,
  'dynamic_variable_prefix': 'library:',
  'dynamic_variable_ttype': 'configuration.ArtLibraryConfig'
}
