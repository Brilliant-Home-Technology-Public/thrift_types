namespace py thrift_types.timezone
namespace java thrift_types.timezone

struct Timezone {
  1: string name //IANA time zone database name, should work for pytz and QTimeZone
  2: string display_name
}

const list<Timezone> supported_timezones = [
    {
        "name": "America/Los_Angeles",
        "display_name": "Pacific - Los Angeles"
    },
    {
        "name": "Pacific/Honolulu",
        "display_name": "Hawaii - Honolulu"
    },
    {
        "name": "America/Anchorage",
        "display_name": "Alaska - Anchorage"
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
]
