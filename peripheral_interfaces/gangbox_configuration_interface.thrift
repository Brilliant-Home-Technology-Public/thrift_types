namespace py thrift_types.peripheral_interfaces.gangbox_configuration_interface
namespace java thrift_types.peripheral_interfaces.gangbox_configuration_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct GangboxConfigurationPeripheralInterface {
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'GangboxConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.GANGBOX_CONFIGURATION,
  'dynamic_variable_prefix': 'process_config:',
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
