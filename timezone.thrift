namespace py thrift_types.timezone
namespace java thrift_types.timezone

struct Timezone {
  1: string name //IANA time zone database name, should work for pytz and QTimeZone
  2: string display_name
}

const string JAPAN_TIMEZONE_NAME = "Asia/Tokyo"
const string JAPAN_TIMEZONE_DISPLAY_NAME = "Japan - Tokyo"
const string UK_TIMEZONE_NAME = "Europe/London"
const string UK_TIMEZONE_DISPLAY_NAME = "UK - London"

const list<Timezone> supported_timezones = [
    {
        "name": "Pacific/Honolulu",
        "display_name": "Hawaii - Honolulu"
    },
    {
        "name": "America/Anchorage",
        "display_name": "Alaska - Anchorage"
    },
    {
        "name": "America/Los_Angeles",
        "display_name": "Pacific - Los Angeles"
    },
    {
        "name": "America/Denver",
        "display_name": "Mountain - Denver"
    },
    {
        "name": "America/Phoenix",
        "display_name": "Mountain - Phoenix"
    },
    {
        "name": "America/Chicago",
        "display_name": "Central - Chicago"
    },
    {
        "name": "America/New_York",
        "display_name": "Eastern - New York"
    },
    {
        "name": "America/Halifax",
        "display_name": "Atlantic - Halifax"
    },
]

const list<Timezone> dev_timezones = [
    {
        "name": JAPAN_TIMEZONE_NAME,
        "display_name": JAPAN_TIMEZONE_DISPLAY_NAME
    },
    {
        "name": UK_TIMEZONE_NAME,
        "display_name": UK_TIMEZONE_DISPLAY_NAME
    },
]
