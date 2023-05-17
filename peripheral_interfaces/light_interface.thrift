namespace py thrift_types.peripheral_interfaces.light_interface
namespace java thrift_types.peripheral_interfaces.light_interface

include "../configuration.thrift"
include "../gangbox.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct LightPeripheralInterface {
  1: bool on
  2: bool dimmable
  3: i32 intensity
  4: optional i32 max_intensity_value
  5: optional bool dimming_edge
  6: optional i32 minimum_dim_level
  7: optional i32 maximum_dim_level
  9: optional i32 power_threshold
  10: optional bool low_wattage
  11: optional bool multi_way
  12: optional gangbox.DimSmoothingConfiguration dim_smoothing_config
  13: optional string display_name
  14: optional double temperature
  15: optional string voltage_references
  16: optional bool is_safe
  17: optional configuration.RoomAssignment room_assignment
  18: optional string ulid
  19: optional bool on_off_inverted
  20: optional i32 current_sensed // DEPRECATED
  21: optional bool break_circuit
  22: optional i32 current_zero_cross
  23: optional bool break_dimming
  25: optional bool enable_current_sensed // DEPRECATED
  26: optional bool enable_current_zero_cross
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'LightPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.LIGHT
}
