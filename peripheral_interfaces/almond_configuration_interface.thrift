namespace py thrift_types.peripheral_interfaces.almond_configuration_interface
namespace java thrift_types.peripheral_interfaces.almond_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct AlmondConfigurationPeripheralInterface {
    1: string ip_address
    2: string password
    3: string owner
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'AlmondConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.ALMOND_CONFIGURATION,
  'dynamic_variable_prefix': message_bus.PROCESS_CONFIGURATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
