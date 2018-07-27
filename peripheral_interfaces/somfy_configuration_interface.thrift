namespace py thrift_types.peripheral_interfaces.somfy_configuration_interface
namespace java thrift_types.peripheral_interfaces.somfy_configuration_interface

include "../message_bus.thrift"
include "../configuration.thrift"
include "peripheral_interface.thrift"

struct SomfyConfigurationPeripheralInterface {
	1: configuration.SomfyCredentials credentials
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'SomfyConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SOMFY_CONFIGURATION,
  'dynamic_variable_prefix': 'process_config:',
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
