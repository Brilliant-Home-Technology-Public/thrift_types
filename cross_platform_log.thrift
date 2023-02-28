namespace py thrift_types.cross_platform_log
namespace java thrift_types.cross_platform_log

/*
 * This file is intended for constants and types related to logging that will be shared across
 * multiple platforms.
 *
 * NOTE: Enum values should be logged using their names uppercased.
 */

const string NOT_APPLICABLE = "NOT_APPLICABLE" // Any string field can potentially use this value.
const string BRILLIANT_INTEGRATION_NAME = "Brilliant"
const string SUPER_PROPERTY_NAME_HOME_TYPE = "home_type"
const string SUPER_PROPERTY_NAME_USER_TYPE = "user_type"
const string SUPER_PROPERTY_DEVICE_INSTANCE_ID = "device_instance_id"
// UniquePeripheralID log format: "{device_id}{UNIQUE_PERIPHERAL_ID_DELIMITER}{peripheral_id}"
const string UNIQUE_PERIPHERAL_ID_DELIMITER = "|"

enum HomeType {
  UNKNOWN = 0
  MULTIFAMILY = 1
}

enum PhysicalDeviceModel {
  UNKNOWN = 0
  BRILLIANT_CONTROL = 1
  BRILLIANT_SWITCH = 2
  BRILLIANT_PLUG = 3
}
