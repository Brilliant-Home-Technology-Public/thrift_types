namespace py thrift_types.peripheral_interfaces.thirdparty_scene_configuration_interface
namespace java thrift_types.peripheral_interfaces.thirdparty_scene_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ThirdpartySceneConfigurationPeripheralInterface {
  1: string last_executed_scene_id
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'ThirdpartySceneConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.THIRD_PARTY_SCENE_CONFIGURATION,
  'dynamic_variable_prefix': configuration.THIRDPARTY_SCENE_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.ThirdpartyScene'
}
