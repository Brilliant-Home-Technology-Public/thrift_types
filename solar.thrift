namespace py thrift_types.solar
namespace java thrift_types.solar

include "configuration.thrift"

enum HomeHeatingType {
  UNKNOWN = 0,
  NONE = 1,
  GAS = 2,
  ELECTRIC = 3,
}

struct SolarConfiguration {
  1: optional i32 average_monthly_energy_bill_dollars
  2: optional double solar_array_size_kw
  3: optional HomeHeatingType heating_type
  4: optional bool has_ev
  5: optional i32 projected_percent_energy_from_solar
}

struct SolarSavings {
  1: i32 total_savings_dollars
  2: configuration.CalendarDay start_day
  3: configuration.CalendarDay end_day
}
