namespace py thrift_types.peripheral_interfaces.weather_interface
namespace java thrift_types.peripheral_interfaces.weather_interface

include "../message_bus.thrift"
include "../weather.thrift"
include "peripheral_interface.thrift"

struct WeatherPeripheralInterface {
  1: i32 current_temp_f
  2: i32 day_max_temp_f
  3: i32 day_min_temp_f
  4: weather.WeatherStatus weather_status
  5: i64 next_sunrise_time_ms
  6: i64 next_sunset_time_ms
  7: optional bool enable_updated_stale_logic
  8: weather.DayTimeSkyCover day_time_sky_cover
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'WeatherPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.WEATHER,
}
