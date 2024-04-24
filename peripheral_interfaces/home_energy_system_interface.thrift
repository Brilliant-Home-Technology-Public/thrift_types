namespace py thrift_types.peripheral_interfaces.home_energy_system_interface
namespace java thrift_types.peripheral_interfaces.home_energy_system_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct HomeEnergySystemPeripheralInterface {
  1: string display_name
  2: configuration.RoomAssignment room_assignment
  3: i32 solar_generation_today_wh
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'HomeEnergySystemPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.HOME_ENERGY_SYSTEM,
}
