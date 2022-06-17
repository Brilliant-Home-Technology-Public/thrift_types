namespace py thrift_types.device_groups
namespace java thrift_types.device_groups

include "configuration.thrift"

const string DEVICE_GROUP_VARIABLE_PREFIX = "group:"

struct DeviceGroup {
  1: string id
  2: string name
  3: configuration.PeripheralFilter peripheral_filter
}
