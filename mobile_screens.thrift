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
  "SettingsDemoMode": "DemoMode",
  "SettingsForgetHome": "ForgetHome",
  // Home Management
  "HomeManagement": "HomeManagement",
  "HomeManagementDevices": "HomeManagement",
  "HomeManagementDetail": "HomeManagementDetail",
  "HomeManagementDeviceDetail": "HomeManagementDetail",
  "HomeManagementDelete": "HomeManagementDelete",
  "SwitchHome": "SwitchHome",

  // Help
  "Help": "Help",
  "ZDKHelpCenterOverviewController": "ZendeskFAQ",
  "ZDCChat": "ZendeskLiveChat",
  "RequestContainerController": "ZendeskRequest",
  "ReportIssue": "ZendeskRequest",
  "FAQ": "ZendeskFAQ",
  "LiveChat": "ZendeskLiveChat",


  // Photos
  "PhotosManageConfig": "Photos:Manage",
  "PhotosConfigEdit": "Photos:Manage",
  "UploadConfiguration": "Photos:Upload",
  "UploadPhoto": "Photos:Upload",
  "LibraryHelp": "Photos:LibraryHelp",
  "PhotosSharedLibraryHelp": "Photos:LibraryHelp",
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
  "PickImage": "Photos:Upload:PhotoSheet", // Android Select/Take Photo sheet
  "CropImage": "Photos:Upload:CropPhoto",


  // Pairing Flow
  "Setup": "Launch",
  "ChooseHome": "Pair:JoinHome",
  "PairingLoading": "Pair:Login:Loading",
  "SetupLoading": "Pair:Login:Loading",
  "EnterCode": "Pair:Login:Verification", // User modifier for error
  "EnterCodeSuccess": "Pair:Login:Success",
  "SelectAccount": "Pair:SetupAccount",
  "CreateAccount": "Pair:SetupAccount:New",
  "CreateAccountSuccess": "Pair:SetupAccount:Success",
  "SetupSuccess": "Pair:SetupAccount:Success",
  "EnterEmail": "Pair:Login",
  "NoHomes": "Pair:JoinHome:Empty",
  "SetupError": "Pair:Error",
  "WebView": "WebView",

  // Debug
  "Debug": "Debug",

  // Demo
  "DemoWalkthrough": "DemoWalkthrough"
}

const string MOBILE_OVERLAY_NAME_CONNECTIVITY_ERROR = "ConnetivityError"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVAL_ERROR = "ControlRemoval:Error"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVAL_UNSUPPORTED = "ControlRemoval:Unsupported"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVED = "ControlRemoved"
const string MOBILE_OVERLAY_NAME_GRANT_PHOTO_PERMISSIONS = "Photos:Upload:GrantPermission"
const string MOBILE_OVERLAY_NAME_SCENES_DEMO_INFO = "Demo:Scenes"
const string MOBILE_OVERLAY_NAME_ROOMS_DEMO_INFO = "Demo:Rooms"
const string MOBILE_OVERLAY_NAME_DEVICES_DEMO_INFO = "Demo:Devices"
const string MOBILE_OVERLAY_NAME_PHOTOS_DEMO_INFO = "Demo:Photos"
const string MOBILE_OVERLAY_NAME_EXIT_DEMO = "Demo:Exit"
const string MOBILE_OVERLAY_NAME_EMPTY_ROOM = "Rooms:Empty"

