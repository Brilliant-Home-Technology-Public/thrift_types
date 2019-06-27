namespace py thrift_types.peripheral_interfaces.mobile_configuration_interface
namespace java thrift_types.peripheral_interfaces.mobile_configuration_interface

include "../message_bus.thrift"
include "../mobile_configuration.thrift"
include "peripheral_interface.thrift"

struct MobileConfigurationPeripheralInterface {
  1: string phone_name
  2: mobile_configuration.Profiles profiles_on_phone
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'MobileConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.MOBILE_CONFIGURATION,
}
