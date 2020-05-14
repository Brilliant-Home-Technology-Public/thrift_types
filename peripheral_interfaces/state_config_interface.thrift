namespace py thrift_types.peripheral_interfaces.state_config_interface
namespace java thrift_types.peripheral_interfaces.state_config_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct StateConfigPeripheralInterface {
	1: string executing_device_id
}

const peripheral_interface.PeripheralInterface peripheral = {
	'peripheral_interface_name': 'StateConfigPeripheralInterface',
	'peripheral_type': message_bus.PeripheralType.STATE_CONFIGURATION,
	'dynamic_variable_prefix': configuration.STATE_CONFIG_VARIABLE_PREFIX,
	'dynamic_variable_ttype': 'configuration.StateConfig'
}
