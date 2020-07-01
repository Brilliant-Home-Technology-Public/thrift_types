namespace py thrift_types.peripheral_interfaces.brilliant_virtual_device_configuration_interface
namespace java thrift_types.peripheral_interfaces.brilliant_virtual_device_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct BrilliantVirtualDeviceConfigurationPeripheralInterface {
    1: string owner
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'BrilliantVirtualDeviceConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.BRILLIANT_VIRTUAL_DEVICE_CONFIGURATION,
  'dynamic_variable_prefix': message_bus.PROCESS_CONFIGURATION_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo'
}
