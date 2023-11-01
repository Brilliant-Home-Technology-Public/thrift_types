namespace py thrift_types.peripheral_interfaces.schlage_configuration_interface
namespace java thrift_types.peripheral_interfaces.schlage_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct SchlageConfigurationPeripheralInterface {
    1: string access_token
    2: i64 expiration_date
    3: optional string refresh_token // DEPRECATED
    4: string owner
    5: configuration.ThirdpartyIntegrationState thirdparty_integration_state
    6: optional bool is_enabled // DEPRECATED
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'SchlageConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SCHLAGE_CONFIGURATION,
  'dynamic_variable_prefix': message_bus.PROCESS_CONFIGURATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
