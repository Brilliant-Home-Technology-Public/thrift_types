namespace py thrift_types.peripheral_interfaces.wifi_interface

include "../message_bus.thrift"
include "../wifi.thrift"
include "peripheral_interface.thrift"

struct WifiPeripheralInterface {
  1: string preferred_network
  2: wifi.AvailableNetworks available_networks
  3: wifi.AssociationStatusType association_status
  4: bool scan_requested
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'WifiPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.WIFI,
  'dynamic_variable_prefix': 'wifi:',
  'dynamic_variable_ttype': 'configuration.WifiCredentials'
}

