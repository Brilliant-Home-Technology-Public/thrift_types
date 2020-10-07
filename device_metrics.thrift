namespace py thrift_types.device_metrics
namespace java thrift_types.device_metrics

include "configuration.thrift"
include "bluetooth.thrift"

const string DEVICE_METRICS_VARIABLE_PREFIX = "metrics:"

/*
 * Stores intermediate data used to log device availability over a particular interval, as well
 * as other relevant information about the device we'd like to include in that log.
 */
struct DeviceMetrics {
  1: i32 total_time_available_seconds
  2: i32 total_time_seconds
  3: configuration.UniquePeripheralID unique_peripheral_id
  4: string date
  5: optional string software_version
}
