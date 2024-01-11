namespace py thrift_types.peripheral_interfaces.solar_interface
namespace java thrift_types.peripheral_interfaces.solar_interface

include "../message_bus.thrift"
include "../solar.thrift"
include "peripheral_interface.thrift"

struct SolarPeripheralInterface {
  1: solar.SolarConfiguration solar_configuration
  2: bool enable_estimated_solar_savings
  3: solar.SolarSavings estimated_total_solar_savings
  4: string reset_estimated_total_solar_savings
  5: solar.MaxSolarProduction estimated_max_solar_production
}

const peripheral_interface.PeripheralInterface peripheral = {
  "peripheral_interface_name": "SolarPeripheralInterface",
  "peripheral_type": message_bus.PeripheralType.SOLAR,
}
