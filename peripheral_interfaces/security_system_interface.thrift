namespace py thrift_types.peripheral_interfaces.security_system_interface
namespace java thrift_types.peripheral_interfaces.security_system_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"
include "../security_system.thrift"

struct SecuritySystemPeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
  3: security_system.SystemMode current_system_mode
  4: security_system.SystemCapabilities system_capabilities
  5: optional security_system.Sensors security_sensors
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'SecuritySystemPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SECURITY_SYSTEM,
}
