namespace py thrift_types.peripheral_interfaces.execution_interface
namespace java thrift_types.peripheral_interfaces.execution_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct ExecutionPeripheralInterface {
    1: string last_executed_scene_id
    3: string trigger_scene_validity_check
    4: string last_executed_state_config_id
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ExecutionPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.EXECUTION,
  'dynamic_variable_prefix': configuration.EXECUTION_STATE_PREFIX,
  'dynamic_variable_ttype': 'configuration.ExecutionState'
}
