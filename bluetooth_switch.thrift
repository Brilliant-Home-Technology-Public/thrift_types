# Bluetooth, BLE, and BLE Mesh services

namespace py thrift_types.bluetooth_switch
namespace java thrift_types.bluetooth_switch

# For MESH_CONFIG_SERVICE
include "ble_mesh_config_service.thrift"

# For MESH_DFU_SERVICE
include "ble_mesh_dfu_service.thrift"

enum SwitchMeshService {
  //  First 2 bits must be 1.
  RESERVED_FOR_FUTURE_USE = 0xC0,
  MESH_CONFIG_SERVICE = 0xC1,
  MESH_DFU_SERVICE = 0xC2,
}
