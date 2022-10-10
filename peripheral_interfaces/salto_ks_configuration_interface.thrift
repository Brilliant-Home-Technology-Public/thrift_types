// DEPRECATED
namespace py thrift_types.peripheral_interfaces.salto_ks_configuration_interface
namespace java thrift_types.peripheral_interfaces.salto_ks_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct SaltoKSConfigurationPeripheralInterface {
    1: string access_token
    2: i64 expiration_date
    3: string refresh_token
    4: string owner
    5: configuration.ThirdpartyIntegrationState thirdparty_integration_state
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'SaltoKSConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SALTO_KS_CONFIGURATION,
  'dynamic_variable_prefix': message_bus.PROCESS_CONFIGURATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
