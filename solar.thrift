namespace py thrift_types.solar
namespace java thrift_types.solar

struct SolarConfiguration {
  1: i32 average_monthly_energy_bill_dollars
  2: double solar_array_size_kw
  3: HomeHeatingType heating_type
  4: bool has_ev
  5: i32 projected_percent_energy_from_solar
}

enum HomeHeatingType {
  UNKNOWN = 0,
  NONE = 1,
  GAS = 2,
  ELECTRIC = 3,
}
