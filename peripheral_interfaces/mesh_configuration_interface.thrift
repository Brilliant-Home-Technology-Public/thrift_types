namespace py thrift_types.peripheral_interfaces.mesh_configuration_interface
namespace java thrift_types.peripheral_interfaces.mesh_configuration_interface

include "../bluetooth.thrift"
include "../configuration.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"

struct MeshConfigurationPeripheralInterface {
  1: bluetooth.AppKeys app_keys
  2: bluetooth.NetKeys net_keys
  3: i32 iv_index
  4: i64 iv_index_update_mode_trigger_time_ms
  5: i64 iv_index_recovery_time_ms
  6: string relay_arbiter_device_id
  7: i32 next_unicast_address
  8: optional bluetooth.TrackedReleaseStages tracked_release_stages
  9: optional bool allow_background_dfu
  10: optional bool enable_dfu_relay_prepare
  11: optional bluetooth.BleMeshPollingParams ble_mesh_device_polling_params
  12: optional bool enable_automatic_always_on_switch_with_on_off_load_fix
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'MeshConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.MESH_CONFIGURATION,
  'dynamic_variable_prefix': bluetooth.MESH_CONFIG_VARIABLE_PREFIX,
  'dynamic_variable_ttype': 'configuration.PeripheralInfo',
}
