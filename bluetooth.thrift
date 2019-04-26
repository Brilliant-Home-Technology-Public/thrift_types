namespace py thrift_types.bluetooth
namespace java thrift_types.bluetooth


const string MESH_PROV_DATA_IN_UUID_STR = "00002adb-0000-1000-8000-00805f9b34fb"
const string MESH_PROV_DATA_OUT_UUID_STR = "00002adc-0000-1000-8000-00805f9b34fb"
const string MESH_PROXY_DATA_IN_UUID_STR ="00002add-0000-1000-8000-00805f9b34fb"
const string MESH_PROXY_DATA_OUT_UUID_STR = "00002ade-0000-1000-8000-00805f9b34fb"

enum BluetoothService {
  BRILLIANT_CONTROL_PROVISIONING = 1,
  MESH_PROVISIONING = 2,
  MESH_PROXY = 3,
}

struct BluetoothDevice {
  1: string mac_address
  2: list<BluetoothService> services = []
  3: optional byte signal_strength
}