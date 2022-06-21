namespace py thrift_types.peripheral_interfaces.device_groups_configuration_interface
namespace java thrift_types.peripheral_interfaces.device_groups_configuration_interface

include "../device_groups.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct DeviceGroupsConfigPeripheralInterface {
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'DeviceGroupsConfigPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.DEVICE_GROUPS_CONFIGURATION,
  'dynamic_variable_prefix': device_groups.DEVICE_GROUP_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'device_groups.DeviceGroup',
}
