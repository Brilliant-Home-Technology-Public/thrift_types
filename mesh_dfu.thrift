namespace py thrift_types.mesh_dfu
namespace java thrift_types.mesh_dfu

const i32 MESH_DEVICE_BOOTLOADER_ID = 1

enum MeshDfuHexType {
  SOFTDEVICE = 1
  BOOTLOADER = 2
  SOFTDEVICE_BOOTLOADER = 3
  APPLICATION = 4
  MESH_BOOTLOADER_INFO = 8
}

enum MeshDfuApplicationID {
  UNKNOWN = 0
  SWITCH = 1
  PLUG = 2
}
