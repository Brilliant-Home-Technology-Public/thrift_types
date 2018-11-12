namespace py thrift_types.peripheral_interfaces.demo_configuration_interface
namespace java thrift_types.peripheral_interfaces.demo_configuration_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"
include "../demo.thrift"


struct DemoConfigurationPeripheralInterface {
	1: demo.DemoType variant
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'DemoConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.DEMO_CONFIGURATION,
}
