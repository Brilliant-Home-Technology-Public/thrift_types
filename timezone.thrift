namespace py thrift_types.timezone

struct Timezone {
  1: string name //IANA time zone database name, should work for pytz and QTimeZone
  2: string display_name
}

const list<Timezone> supported_timezones = [
    {
        "name": "America/Anchorage",
        "display_name": "AKST - Alaska Standard Time"
    },
    {
        "name": "America/Chicago",
        "display_name": "CST - Central Standard Time"
    },
    {
        "name": "America/New_York",
        "display_name": "EST - Eastern Standard Time"
    },
    {
        "name": "Pacific/Honolulu",
        "display_name": "HST - Hawaii Standard Time"
    },
    {
        "name": "America/Denver",
        "display_name": "MST - Mountain Standard Time"
    },
    {
        "name": "America/Los_Angeles",
        "display_name": "PST - Pacific Standard Time"
    }
]
