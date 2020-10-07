namespace py thrift_types.peripheral_interfaces.device_metrics_interface
namespace java thrift_types.peripheral_interfaces.device_metrics_interface

include "../device_metrics.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

/*
 * The device metrics peripheral is a server-owned peripheral on the configuration device that
 * stores intermediate data used by the controls to write Mixpanel logs indicating the amount
 * of time a peripheral was available over a single day. Each dynamic variable represents data
 * for a particular peripheral for a particular day, and it is deleted and its data logged to
 * Mixpanel once that day has passed by the control responsible for that variable.
 * See the DeviceMetricsManager class in switch-embedded for more details.
 */

struct DeviceMetricsPeripheralInterface {
  /* 
   * The fallback logging device is de facto lease owner for the device metrics peripheral, and it
   * is responsible for creating variables for new peripherals, and deleting and logging variables
   * for deleted peripherals. It also handles the "fallback flow", clearing out dynamic variables
   * that are excessively old.
   */
  1: string fallback_logging_device_id
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'DeviceMetricsPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.DEVICE_METRICS,
  'dynamic_variable_prefix': device_metrics.DEVICE_METRICS_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'device_metrics.DeviceMetrics'
}
