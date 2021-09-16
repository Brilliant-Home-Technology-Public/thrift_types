namespace py thrift_types.installation_template
namespace java thrift_types.installation_template

enum InstallConfig {
  SINGLE_POLE = 1
  LOAD = 2
  LINE = 3
  FOURWAY = 4
  NOT_SURE = 5
  OUTLET = 6
  OUTLET_CONTROLLED_LIGHT = 7
}

enum InstallLoadType {
  LED = 1
  CFL = 2
  INCANDESCENT = 3
  MAGNETIC_LIGHTING = 4
  SMART_LIGHT_BULB = 5
  FAN = 6
  ON_OFF_SWITCH = 7
  POWER_OUTLET = 8
  OTHER = 9
  OTHER_LIGHT = 10
}

enum InstallWattage {
  LESS_THAN_10W = 1
  BETWEEN_10_AND_150W = 2
  GREATER_THAN_150W = 3
  BETWEEN_150_AND_300W = 4
  BETWEEN_10_AND_300W = 5
  GREATER_THAN_300W = 6
  NOT_SURE = 7
  BETWEEN_10_AND_200W = 8
  BETWEEN_150_AND_200W = 9
  GREATER_THAN_200W = 10
  BETWEEN_300_AND_500W = 11
  GREATER_THAN_500W = 12
}

enum InstallationDeviceType {
  ONE_GANG = 1
  TWO_GANG = 2
  THREE_GANG = 3
  FOUR_GANG = 4
  BRILLIANT_SWITCH = 5
  BRILLIANT_PLUG = 6
  STANDARD_SWITCH = 7
  STANDARD_DIMMER = 8
  THERMOSTAT = 9
  LEAK_DETECTOR = 10
}

const string INSTALL_TEMPLATE_TEMPLATE_KEY = "template"
const string INSTALL_TEMPLATE_TEMPLATE_VALUES_KEY = "template_values"
const string INSTALL_TEMPLATE_ROOMS_KEY = "rooms"
const string INSTALL_TEMPLATE_WIFI_SSID_KEY = "wifi_ssid"
const string INSTALL_TEPMLATE_WIFI_PASSWORD_KEY = "wifi_password"
const string INSTALL_TEMPLATE_WIFI_NOTES_KEY = "wifi_notes"
const string INSTALL_TEMPLATE_HONEYWELL_USERNAME_KEY = "honeywell_username"
const string INSTALL_TEMPLATE_HONEYWELL_PASSWORD_KEY = "honeywell_password"

