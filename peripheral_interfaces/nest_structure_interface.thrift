namespace py thrift_types.peripheral_interfaces.nest_structure_interface
namespace java thrift_types.peripheral_interfaces.nest_structure_interface

include "../message_bus.thrift"
include "../nest.thrift"
include "peripheral_interface.thrift"

struct NestStructurePeripheralInterface {
	1: string display_name
	2: nest.ThermostatIds thermostat_ids
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'NestStructurePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.NEST_STRUCTURE
}
