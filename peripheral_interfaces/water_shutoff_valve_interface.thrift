namespace py thrift_types.peripheral_interfaces.water_shutoff_valve_interface
namespace java thrift_types.peripheral_interfaces.water_shutoff_valve_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "../water_shutoff_valve.thrift"
include "peripheral_interface.thrift"

struct WaterShutoffValvePeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
  3: water_shutoff_valve.WaterShutoffValveStatus valve_status
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'WaterShutoffValvePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.WATER_SHUTOFF_VALVE
}
