namespace py thrift_types.peripheral_interfaces.configuration_templates_interface
namespace java thrift_types.peripheral_interfaces.configuration_templates_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct ConfigurationTemplatesPeripheralInterface {
  1: bool has_installation_template
}

const peripheral_interface.PeripheralInterface peripheral = {
  "peripheral_interface_name": "ConfigurationTemplatesPeripheralInterface",
  "peripheral_type": message_bus.PeripheralType.CONFIGURATION_TEMPLATES,
}
