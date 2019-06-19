namespace py thrift_types.peripheral_interfaces.ble_interface
namespace java thrift_types.peripheral_interfaces.ble_interface

include "../bluetooth.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct BlePeripheralInterface {
  1: i32 seq_upper
  2: bluetooth.ReplayProtection replay_protection
  3: bluetooth.BluetoothDevices bluetooth_devices_nearby
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'BlePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.BLE,
}
