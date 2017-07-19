namespace py thrift_types.peripheral_interfaces.discovery_interface

include "../discovery.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct DiscoveryPeripheralInterface {
  1: string available_services
  2: discovery.ThirdpartyDeviceInterfaces available_upnp_services
  3: bool discovery_mode_on
  4: bool discovery_mode_available
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'DiscoveryPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.DISCOVERY
}
