namespace py thrift_types.peripheral_interfaces.remote_bridge_interface
namespace java thrift_types.peripheral_interfaces.remote_bridge_interface

include "../remote_bridge.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct RemoteBridgeInterface {
  1: optional string address
  2: optional remote_bridge.KnownRemoteDevices known_remote_devices
  3: optional i32 device_provisioning_ip_listen_port
  4: optional string relay_device
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'RemoteBridgeInterface',
  'peripheral_type': message_bus.PeripheralType.REMOTE_BRIDGE,
}
