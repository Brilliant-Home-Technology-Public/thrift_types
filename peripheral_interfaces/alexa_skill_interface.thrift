namespace py thrift_types.peripheral_interfaces.alexa_skill_interface
namespace java thrift_types.peripheral_interfaces.alexa_skill_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct AlexaSkillPeripheralInterface {
  1: i64 last_discovered_timestamp
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'AlexaSkillPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.ALEXA_SKILL
}
