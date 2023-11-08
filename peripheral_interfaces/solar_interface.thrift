namespace py thrift_types.peripheral_interfaces.solar_interface
namespace java thrift_types.peripheral_interfaces.solar_interface

include "../message_bus.thrift"
include "../solar.thrift"
include "peripheral_interface.thrift"

struct SolarPeripheralInterface {
  1: solar.SolarConfiguration solar_configuration
  2: bool enable_estimated_solar_savings
}

const peripheral_interface.PeripheralInterface peripheral = {
  "peripheral_interface_name": "SolarPeripheralInterface",
  "peripheral_type": message_bus.PeripheralType.SOLAR,
}
