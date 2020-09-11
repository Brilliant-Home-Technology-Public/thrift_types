namespace py thrift_types.peripheral_interfaces.brilliant_plug_interface
namespace java thrift_types.peripheral_interfaces.brilliant_plug_interface

include "../bluetooth.thrift"
include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct BrilliantPlugPeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
  3: string configuration_peripheral_id
  4: string peripheral_info_id
  5: i32 status_light_max_brightness
  6: bluetooth.MeshDeviceFirmware firmware_version
  7: i32 api_version
  8: configuration.PeripheralConfiguration peripheral_configuration
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'BrilliantPlugPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.BRILLIANT_PLUG,
}
