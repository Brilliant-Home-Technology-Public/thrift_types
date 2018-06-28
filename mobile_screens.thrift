namespace py thrift_types.log
namespace java thrift_types.log

const string UNMAPPED_SCREEN_PREFIX = "[UNMAPPED]"

const map<string,string> SCREEN_NAME_MAP = {
  // Main Tabs
  "Home": "HomeTab"
  "HomeTab": "HomeTab",
  "Photos": "PhotosTab",
  "PhotosTab": "PhotosTab",
  "Scenes": "ScenesTab",
  "ScenesTab": "ScenesTab",

  "Login": "Login",
  
  // Device Control
  "Devices": "Devices",
  "DeviceControl": "Devices",
  "Rooms": "Rooms",
  "DeviceControlByRoom": "Rooms",
  "Settings": "Settings",

  // Account
  "EditAccount": "EditAccount",

  // Photos
  "PhotosManageConfig": "PhotosManageConfig",
  "PhotosConfigEdit": "PhotosManageConfig",
  "PhotosConfigDevices": "PhotosManageDevices",
  "PhotosManageDevices": "PhotosManageDevices",
  "UploadPhoto": "UploadPhoto",
  "PhotoDetail": "PhotoDetail"

  // Pairing Flow
  "Setup": "Setup",
  "Pairing": "Pairing",
  "ChooseHome": "ChooseHome",
  "SetupLoading": "PairingLoading",
  "PairingError": "PairingError",
  "EnterCode": "EnterCode",
  "EnterCodeSuccess": "EnterCodeSuccess",
  "SelectAccount": "SelectAccount",
  "CreateAccount": "CreateAccount",
  "CreateAccountSuccess": "SetupSuccess",
  "SetupSuccess": "SetupSuccess"

  // Debug
  "Debug": "Debug",
}
