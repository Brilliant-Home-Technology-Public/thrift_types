namespace py thrift_types.bluetooth
namespace java thrift_types.bluetooth


const string MESH_PROV_DATA_IN_UUID_STR = "00002adb-0000-1000-8000-00805f9b34fb"
const string MESH_PROV_DATA_OUT_UUID_STR = "00002adc-0000-1000-8000-00805f9b34fb"
const string MESH_PROXY_DATA_IN_UUID_STR ="00002add-0000-1000-8000-00805f9b34fb"
const string MESH_PROXY_DATA_OUT_UUID_STR = "00002ade-0000-1000-8000-00805f9b34fb"
const string MESH_CONFIG_VARIABLE_PREFIX = "mesh_device:"

enum BluetoothService {
  BRILLIANT_CONTROL_PROVISIONING = 1,
  MESH_PROVISIONING = 2,
  MESH_PROXY = 3,
}

struct BluetoothDevice {
  1: string mac_address
  2: list<BluetoothService> services = []
  3: optional byte signal_strength
  4: string device_id
}

enum MeshDeviceType {
  SWITCH = 0,
  CONTROL = 1,
}

struct NetKey {
  1: i16 index
  2: string key
}

struct NetKeys {
  1: list<NetKey> keys
}

struct AppKey {
  1: i16 index
  2: i16 bound_net_key_index
  3: string key
}

struct AppKeys {
  1: list<AppKey> keys
}

struct Model {
  1: i16 id			// 1000 for onoff model, 1002 for level model
  2: list<i16> app_key_indexes	// The app keys which are bound to this model
}

struct Element {
  1: i16 index			// The index of the element in the mesh device
  2: i16 unicast_address
  3: list<Model> models
}

struct MeshDeviceConfig {
  1: string device_id		// The UUID of the device
  2: MeshDeviceType type
  3: i16 version_id		// The version of this device
  4: string device_key		// The device key will be required for appkey rotation
  5: list<i16> net_key_indexes	// This represents what networks the mesh device is part of
  6: list<Element> elements	// Elements on a mesh device -> see below for Element definition
  7: string relay_device_id	// The device from which we can reach the mesh device
}

struct ReplayProtection {
  1: map<i32, i64> unicast_address_to_seqauth_map
}

struct BleMeshDevice {
  1: string mesh_device_id
  2: i16 unicast_address
  3: i64 rssi
}

struct BleMeshDevices {
  1: list<BleMeshDevice> devices
}

struct BluetoothDevices {
  1: list<BluetoothDevice> devices
}
