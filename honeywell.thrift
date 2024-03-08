namespace py thrift_types.honeywell
namespace java thrift_types.honeywell

// Alarm types received from Honeywell leak detectors
const string HONEYWELL_HIGH_TEMPERATURE_ALARM = "HighTemperature"
const string HONEYWELL_LOW_TEMPERATURE_ALARM = "LowTemperature"
const string HONEYWELL_HIGH_HUMIDITY_ALARM = "HighHumidity"
const string HONEYWELL_LOW_HUMIDITY_ALARM = "LowHumidity"
const string HONEYWELL_WATER_LEAK_ALARM = "WaterLeak"
const string HONEYWELL_LOW_BATTERY_ALARM = "LowBattery"
const string HONEYWELL_CRITICAL_BATTERY_ALARM = "CriticalBattery"

// Honeywell Notification Event Keys
const string HONEYWELL_EVENT_KEY_HIGH_TEMPERATURE_ALERT = "honeywell:high_temperature_alert"
const string HONEYWELL_EVENT_KEY_LOW_TEMPERATURE_ALERT = "honeywell:low_temperature_alert"
const string HONEYWELL_EVENT_KEY_HIGH_HUMIDITY_ALERT = "honeywell:high_humidity_alert"
const string HONEYWELL_EVENT_KEY_LOW_HUMIDITY_ALERT = "honeywell:low_humidity_alert"
const string HONEYWELL_EVENT_KEY_DEVICE_OFFLINE_ALERT = "honeywell:device_offline_alert"
const string HONEYWELL_EVENT_KEY_LOW_BATTERY_ALERT = "honeywell:low_battery_alert"
const string HONEYWELL_EVENT_KEY_WATER_LEAK_ALERT = "honeywell:water_leak_alert"
const string HONEYWELL_EVENT_KEY_FAN_MODE = "honeywell:fan_mode"
const string HONEYWELL_EVENT_KEY_HVAC_MODE = "honeywell:hvac_mode"
const string HONEYWELL_EVENT_KEY_AMBIENT_TEMPERATURE = "honeywell:ambient_temperature"
const string HONEYWELL_EVENT_KEY_UNITS = "honeywell:units"
const string HONEYWELL_EVENT_KEY_HEAT_SETPOINT = "honeywell:heat_setpoint"
const string HONEYWELL_EVENT_KEY_COOL_SETPOINT = "honeywell:cool_setpoint"
const string HONEYWELL_EVENT_KEY_NOTIFICATION_TYPE = "honeywell:notification_type"
