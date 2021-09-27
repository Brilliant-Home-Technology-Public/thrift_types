# BLE Mesh service

namespace py thrift_types.ble_mesh_dfu_service
namespace java thrift_types.ble_mesh_dfu_service

include "bluetooth_common.thrift"

enum MeshDFUServicePropertyID {
  RESERVED_FOR_FUTURE_USE     = 0x00, # ID 0 could be used for service discovery, e.g. return last ID code
}

const map<MeshDFUServicePropertyID, bluetooth_common.ServicePropertySpec> DFU_SERVICE_PROPERTY_SPECS = {
  MeshDFUServicePropertyID.RESERVED_FOR_FUTURE_USE: {
    "property_id": MeshDFUServicePropertyID.RESERVED_FOR_FUTURE_USE,
    "property_size": 1,
    "default_value": 0,
    "min_value": 0,
    "max_value": 1,
    "property_type": bluetooth_common.MeshPropertyDataType.BOOL,
    "flash_handle": bluetooth_common.SwitchPropertyFlashHandle.FLASH_HANDLE_ALWAYS_ON,
    "publish_config_type": bluetooth_common.PublishConfigType.DISABLED,
    "deprecated": 0,
  },
}
