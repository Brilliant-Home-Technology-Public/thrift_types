namespace py thrift_types.peripheral_interfaces.shade_interface
namespace java thrift_types.peripheral_interfaces.shade_interface

include "../message_bus.thrift"
include "../shade.thrift"
include "peripheral_interface.thrift"

struct ShadePeripheralInterface {
  1: optional bool continuous // Deprecated by "capabilities" variable
  2: i32 position
  3: optional shade.ShadeCapabilities capabilities
  4: optional i32 secondary_position
  5: optional i32 tilt_position
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ShadePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SHADE,
}
