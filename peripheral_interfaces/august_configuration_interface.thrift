namespace py thrift_types.peripheral_interfaces.august_configuration_interface
namespace java thrift_types.peripheral_interfaces.august_configuration_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct AugustConfigurationPeripheralInterface {
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'AugustConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.AUGUST_CONFIGURATION,
  'dynamic_variable_prefix': message_bus.PROCESS_CONFIGURATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
