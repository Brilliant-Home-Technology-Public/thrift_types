namespace py thrift_types.weather
namespace java thrift_types.weather

enum WeatherStatus {
  UNKNOWN = 0,
  GENERIC_DAY = 1,
  GENERIC_NIGHT = 2,
  CLOUD = 3,
  RAIN_HEAVY = 4,
  RAIN_MODERATE = 5,
  RAIN_LIGHT = 6,
  SNOW_HEAVY = 7,
  SNOW_LIGHT = 8,
  THUNDERSTORM = 9,
  TORNADO = 10,
}
