namespace py thrift_types.peripheral_interfaces.honeywell_tc2_configuration_interface
namespace java thrift_types.peripheral_interfaces.honeywell_tc2_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct HoneywellTC2ConfigurationPeripheralInterface {
    1: string access_token
    2: i64 expiration_date
    4: string owner
    5: configuration.ThirdpartyIntegrationState thirdparty_integration_state
    6: optional i32 service_type = -1
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'HoneywellTC2ConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.HONEYWELL_TC2_CONFIGURATION,
  'dynamic_variable_prefix': message_bus.PROCESS_CONFIGURATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
