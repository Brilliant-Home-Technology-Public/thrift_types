namespace py thrift_types.peripheral_interfaces.discovery_interface
namespace java thrift_types.peripheral_interfaces.discovery_interface

include "../discovery.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct DiscoveryPeripheralInterface {
  1: discovery.DeviceInterfaces available_services
  2: bool discovery_mode_on
  3: bool discovery_mode_available
  4: discovery.ThirdpartyDeviceInterfaces available_thirdparty_services
  5: discovery.WebAPIEndpoint web_api_service
  6: discovery.AvailableDetailedDiscoveryModes detailed_discovery_modes_available
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'DiscoveryPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.DISCOVERY,
  'dynamic_variable_prefix': discovery.SERVICE_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'discovery.Service'
}
