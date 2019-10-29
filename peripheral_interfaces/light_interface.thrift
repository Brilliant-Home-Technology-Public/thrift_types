namespace py thrift_types.peripheral_interfaces.light_interface
namespace java thrift_types.peripheral_interfaces.light_interface

include "../message_bus.thrift"
include "../color.thrift"
include "peripheral_interface.thrift"

struct LightPeripheralInterface {
  1: bool on
  2: bool dimmable
  3: i32 intensity
  4: optional bool supports_color
  5: optional bool supports_temp
  6: optional color.Color color
  7: optional color.ColorList recently_saved_colors
  8: optional i32 min_temperature
  9: optional i32 max_temperature
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'LightPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.LIGHT
}
