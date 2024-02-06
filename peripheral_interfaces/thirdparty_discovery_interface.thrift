namespace py thrift_types.peripheral_interfaces.thirdparty_discovery_interface
namespace java thrift_types.peripheral_interfaces.thirdparty_discovery_interface

include "../discovery.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ThirdpartyDiscoveryPeripheralInterface {
  1: discovery.ThirdpartyDeviceInterfaces available_thirdparty_services
  2: discovery.AvailableDetailedDiscoveryModes detailed_discovery_modes_available
  3: bool discovery_mode_on
  4: discovery.ThirdpartyDeviceType detailed_discovery_mode
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ThirdpartyDiscoveryPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.THIRDPARTY_DISCOVERY,
}
