namespace py thrift_types.peripheral_interfaces.bootstrap_interface

include "../bootstrap.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct BootstrapPeripheralInterface {
  1: bootstrap.AvailableHomes available_homes
  2: i32 authentication_code
  3: bootstrap.BootstrapStatus status
  4: string target_home_id
  5: string server_authentication_token
  6: bootstrap.BootstrapParameters pivot_home
  7: bootstrap.OutOfBandData out_of_band_data
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'BootstrapPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.BOOTSTRAP
}
