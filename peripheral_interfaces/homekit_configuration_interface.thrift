namespace py thrift_types.peripheral_interfaces.homekit_configuration_interface
namespace java thrift_types.peripheral_interfaces.homekit_configuration_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct HomeKitConfigurationPeripheralInterface {
    1: string bridged_device_id
}

const peripheral_interface.PeripheralInterface peripheral = {
    'peripheral_interface_name': 'HomeKitConfigurationPeripheralInterface',
    'peripheral_type': message_bus.PeripheralType.HOMEKIT_CONFIGURATION,
}
