namespace py thrift_types.peripheral_interfaces.remotelock_configuration_interface
namespace java thrift_types.peripheral_interfaces.remotelock_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct RemoteLockConfigurationPeripheralInterface {
    1: string access_token
    2: i64 expiration_date
    3: string owner
    4: configuration.ThirdpartyIntegrationState thirdparty_integration_state
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'RemoteLockConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.REMOTELOCK_CONFIGURATION,
  'dynamic_variable_prefix': message_bus.PROCESS_CONFIGURATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
