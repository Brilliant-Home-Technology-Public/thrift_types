namespace py thrift_types.peripheral_interfaces.scene_interface
namespace java thrift_types.peripheral_interfaces.scene_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ScenePeripheralInterface {
  1: string executing_device_id
  2: optional configuration.SceneValidityStates scene_validity_states
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ScenePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SCENE_CONFIGURATION
  'dynamic_variable_prefix': 'scene:',
  'dynamic_variable_ttype': 'configuration.Scene'
}
