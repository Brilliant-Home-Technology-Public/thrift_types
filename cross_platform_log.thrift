namespace py thrift_types.cross_platform_log
namespace java thrift_types.cross_platform_log

/*
 * This file is intended for constants and types related to logging that will be shared across
 * multiple platforms.
 *
 * NOTE: Enum values should be logged using their names uppercased.
 */

enum PhysicalDeviceModel {
  UNKNOWN = 0
  BRILLIANT_CONTROL = 1
  BRILLIANT_SWITCH = 2
  BRILLIANT_PLUG = 3
}
