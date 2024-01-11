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

struct MaxSolarProduction {
  1: list<i32> daily_solar_production_kwh_by_month # Months are 0-indexed starting with January
  2: configuration.CalendarDay last_day_polled
}

const MaxSolarProduction INVALID_MAX_SOLAR_PRODUCTION = {
    "daily_solar_production_kwh_by_month": [],
    "last_day_polled": {
        "day_of_month": 1,
        "month": configuration.Month.JAN,
        "year": 1
    },
}
