namespace py thrift_types.mobile_screens
namespace java thrift_types.mobile_screens

const string MOBILE_UNMAPPED_SCREEN_PREFIX = "[UNMAPPED]"

const map<string,string> MOBILE_SCREEN_NAME_MAP = {
  // Main Tabs
  "PhotosTab": "Photos",
  "ScenesTab": "Scenes",
  "DevicesTab": "Devices",
  "RoomsTab": "Rooms",

  "Login": "LockedWelcome",
  
  // Device Control
  "Devices": "Devices", // Use modifier to specify type
  "DeviceControl": "Devices", // Use modifier to specify type
  "Rooms": "Rooms:Specific"
  "DeviceControlByRoom": "Rooms:Specific",
  "Settings": "Settings",

  // Account
  "EditAccount": "AccountSettings",
  "EditAccountEditSettings": "AccountSettings",

  // Settings
  "DemoMode": "DemoMode",
  "ForgetHome": "ForgetHome",
  "ForgotPin": "ForgotPin",

  // Help
  "Help": "Help",
  "ZDKHelpCenterOverviewController": "ZendeskFAQ"
  "RequestContainerController": "ZendeskRequest"


  // Photos
  "PhotosManageConfig": "Photos:Manage",
  "PhotosConfigEdit": "Photos:Manage",
  "UploadConfiguration": "Photos:Upload",
  "UploadPhoto": "Photos:Upload",
  "LibraryHelp": "Photos:LibraryHelp",
  "PhotoDetail": "Photos:Manage:ViewPhoto",
  "PhotoDelete": "Photos:Manage:DeletePhoto",
  "DeletePhoto": "Photos:Manage:DeletePhoto",
  "UploadPhotoStatus": "Photos:Upload", // Use Modifier for status
  "UploadLoading": "Photos:Upload:Loading",
  "UploadSuccess": "Photos:Upload:Success",
  "UploadFailure": "Photos:Upload:Failure",
  "PUPhotoPickerHost": "Photos:Upload:SelectPhoto",
  "CAMImagePickerCamera": "Photos:Upload:TakePhoto",
  "Crop": "Photos:Upload:CropPhoto",


  // Pairing Flow
  "Setup": "Launch",
  "Pairing": "Pairing",
  "ChooseHome": "ChooseHome",
  "SetupLoading": "PairingLoading",
  "PairingLoading": "PairingLoading",
  "PairingError": "PairingError",
  "EnterCode": "EnterCode", // User modifier for error
  "EnterCodeSuccess": "PairSuccess",
  "SelectAccount": "CreateAccount:Existing",
  "CreateAccount": "CreateAccount:New",
  "CreateAccountSuccess": "CreateAccount:Success",
  "SetupSuccess": "CreateAccount:Success",

  // Debug
  "Debug": "Debug",
}

const string MOBILE_OVERLAY_NAME_GRANT_PHOTO_PERMISSIONS = "Photos:Upload:GrantPermission"

