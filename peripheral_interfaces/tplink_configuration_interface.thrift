namespace py thrift_types.peripheral_interfaces.tplink_configuration_interface
namespace java thrift_types.peripheral_interfaces.tplink_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct TPLinkConfigurationPeripheralInterface {
    1: string access_token
    2: i64 expiration_date
    3: string refresh_token
    4: string owner
    5: configuration.ThirdpartyIntegrationState thirdparty_integration_state
    6: optional bool is_enabled
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'TPLinkConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.TPLINK_CONFIGURATION,
  'dynamic_variable_prefix': message_bus.PROCESS_CONFIGURATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
