namespace py thrift_types.thermostat
namespace java thrift_types.thermostat

const string HONEYWELL_LYRIC_ROUND = "Lyric Round"
const string HONEYWELL_LYRIC_T5 = "Lyric T5"

enum HVACMode {
  OFF = 1
  COOL = 2
  HEAT = 3
  AUTO = 4 // Only supported by Honeywell Lyric Round
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
}
