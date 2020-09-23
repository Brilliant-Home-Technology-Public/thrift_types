namespace py thrift_types.peripheral_interfaces.ble_interface
namespace java thrift_types.peripheral_interfaces.ble_interface

include "../bluetooth.thrift"
include "../mesh_dfu.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct BlePeripheralInterface {
  1: i32 seq_upper
  2: bluetooth.ReplayProtection replay_protection
  3: bluetooth.BluetoothDevices bluetooth_devices_nearby
  4: string mesh_proxy_device_id
  5: mesh_dfu.MeshDfuApplicationID last_update_attempt_application_id
  6: bluetooth.MeshDeviceFirmware switch_firmware_version
  7: mesh_dfu.MeshUpdateStates mesh_update_states
  8: bool monitor_bluetooth_operations
  9: bluetooth.MeshDeviceFirmware plug_firmware_version
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'BlePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.BLE,
}
