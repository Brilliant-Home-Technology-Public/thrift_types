namespace py thrift_types.peripheral_interfaces.alarm_config_interface
namespace java thrift_types.peripheral_interfaces.alarm_config_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct AlarmConfigPeripheralInterface {
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'AlarmConfigPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.ALARM_CONFIGURATION,
  'dynamic_variable_prefix': configuration.ALARM_CONFIG_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.AlarmConfig',
}
