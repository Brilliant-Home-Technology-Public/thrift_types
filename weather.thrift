namespace py thrift_types.weather
namespace java thrift_types.weather

include "configuration.thrift"

enum WeatherStatus {
  UNKNOWN = 0,
  GENERIC_DAY = 1,
  GENERIC_NIGHT = 2,
  CLOUDY = 3,
  RAIN_HEAVY = 4,
  RAIN_MODERATE = 5,
  RAIN_LIGHT = 6,
  SNOW_HEAVY = 7,
  SNOW_LIGHT = 8,
  THUNDERSTORM = 9,
  TORNADO = 10,
  PARTLY_CLOUDY = 11,
}

const i32 INVALID_TEMPERATURE_F = -460 # ~Zero Kelvin
const i32 INVALID_SKY_COVER_PERCENTAGE = -1

struct DayTimeSkyCover {
  1: i32 percentage
  2: configuration.CalendarDay day
}

struct DayTimeWeatherStatus {
  1: WeatherStatus weather_status
  2: configuration.CalendarDay day
}

const DayTimeSkyCover INVALID_DAY_TIME_SKY_COVER = {
    "percentage": INVALID_SKY_COVER_PERCENTAGE,
    "day": {
        "day_of_month": 1,
        "month": configuration.Month.JAN,
        "year": 1
    },
}

const DayTimeWeatherStatus INVALID_DAY_TIME_WEATHER_STATUS = {
    "weather_status": WeatherStatus.UNKNOWN,
    "day": {
        "day_of_month": 1,
        "month": configuration.Month.JAN,
        "year": 1
    },
}
