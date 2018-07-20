namespace py thrift_types.thermostat
namespace java thrift_types.thermostat

const string HONEYWELL_LYRIC_ROUND = "Lyric Round"
const string HONEYWELL_LYRIC_T5 = "Lyric T5"

enum HVACMode {
  OFF = 1
  COOL = 2
  HEAT = 3
  AUTO = 4 // Only supported by Honeywell Lyric Round, Nest
  ECO = 5 // Only supported by Nest
}

enum FanMode {
  OFF = 1 //No integration supports this right now
  ON = 2
  AUTO = 3
  CIRCULATE = 4 // Only supported by Honeywell Lyrics
}

struct ThermostatCapabilities {
  1: list<HVACMode> supported_hvac_modes
  2: list<FanMode> supported_fan_modes
  3: bool supports_fan_timer
}

// all times in minutes
enum FanTimerDuration {
  UNKNOWN = 0,
  FIFTEEN_MINS = 15,
  THIRTY_MINS = 30,
  FORTY_FIVE_MINS = 45,
  ONE_HOUR = 60,
  TWO_HOURS = 120,
  FOUR_HOURS = 240,
}

struct TemperatureRange {
  1: i32 min_f
  2: i32 max_f
}

struct TemperatureRanges {
  1: TemperatureRange target_temperature_range
  // both target_temperature_low_f and target_temperature_high_f should be
  // used mutually exclusively with target_temperature_f (depending on hvac_mode)
  2: TemperatureRange target_temperature_low_range
  3: TemperatureRange target_temperature_high_range
  4: i32 heat_cool_min_delta // minimum required distance between low and high temps
}
