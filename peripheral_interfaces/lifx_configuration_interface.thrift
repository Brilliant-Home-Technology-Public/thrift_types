namespace py thrift_types.peripheral_interfaces.lifx_configuration_interface
namespace java thrift_types.peripheral_interfaces.lifx_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct LifxConfigurationPeripheralInterface {
    1: string owner
    2: configuration.ThirdpartyIntegrationState thirdparty_integration_state
    3: optional bool is_enabled
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'LifxConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.LIFX_CONFIGURATION,
  'dynamic_variable_prefix': message_bus.PROCESS_CONFIGURATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
