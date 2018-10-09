namespace py thrift_types.peripheral_interfaces.sonos_configuration_interface
namespace java thrift_types.peripheral_interfaces.sonos_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct SonosConfigurationPeripheralInterface {
    1: string owner
    2: configuration.ThirdpartyIntegrationState thirdparty_integration_state
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'SonosConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SONOS_CONFIGURATION,
  'dynamic_variable_prefix': message_bus.PROCESS_CONFIGURATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
