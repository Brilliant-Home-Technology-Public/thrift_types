namespace py thrift_types.peripheral_interfaces.ble_interface
namespace java thrift_types.peripheral_interfaces.ble_interface

include "../bluetooth.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct BlePeripheralInterface {
  1: i16 unicast_address
  2: i32 seq_upper
  3: bluetooth.ReplayProtection replay_protection
}

const peripheral_interface.PeripheralInterface ble_peripheral = {
  'peripheral_interface_name': 'BlePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.BLE,
}
