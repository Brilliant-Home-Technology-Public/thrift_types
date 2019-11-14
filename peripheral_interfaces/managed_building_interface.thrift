namespace py thrift_types.peripheral_interfaces.managed_building_interface
namespace java thrift_types.peripheral_interfaces.managed_building_interface

include "../butterflymx.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ManagedBuildingPeripheralInterface {
  1: string thirdparty_display_name
  2: butterflymx.BuildingEntryPanels building_entry_panels
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ManagedBuildingPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.MANAGED_BUILDING
}
