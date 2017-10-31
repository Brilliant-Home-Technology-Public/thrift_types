namespace py thrift_types.peripheral_interfaces.hue_bridge_configuration_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct HueBridgeConfigurationPeripheralInterface {
  1: configuration.HueBridgeCredentials credentials
  2: configuration.HueBridgeIntegrationStates bridge_thirdparty_integration_states
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'HueBridgeConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.HUE_BRIDGE_CONFIGURATION,
}
