namespace py thrift_types.peripheral_interfaces.hunter_douglas_configuration_interface
namespace java thrift_types.peripheral_interfaces.hunter_douglas_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"
include "../hunter_douglas.thrift"


struct HunterDouglasConfigurationPeripheralInterface {
    1: string owner
    2: configuration.ThirdpartyIntegrationState thirdparty_integration_state
    3: optional hunter_douglas.HunterDouglasGatewayInfos gateway_infos
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'HunterDouglasConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.HUNTER_DOUGLAS_CONFIGURATION,
  'dynamic_variable_prefix': message_bus.PROCESS_CONFIGURATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
