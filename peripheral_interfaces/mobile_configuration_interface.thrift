namespace py thrift_types.peripheral_interfaces.mobile_configuration_interface
namespace java thrift_types.peripheral_interfaces.mobile_configuration_interface

include "../message_bus.thrift"
include "../mobile_configuration.thrift"
include "peripheral_interface.thrift"

struct MobileConfigurationPeripheralInterface {
  1: string device_name
  2: string mobile_device_type
  3: mobile_configuration.Profiles profiles // Deprecated, use user_id instead
  4: string user_id
  5: i64 allegion_mobilecredential_authorized_ms
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'MobileConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.MOBILE_CONFIGURATION,
}
