namespace py thrift_types.mobile_screens
namespace java thrift_types.mobile_screens

const string MOBILE_DEMO_SCREEN_PREFIX = "Demo:"
const string MOBILE_UNMAPPED_SCREEN_PREFIX = "[UNMAPPED]"

const map<string,string> MOBILE_SCREEN_NAME_MAP = {
  // SpecialDemo:
  "StreamlinedDemo": "Launch:Demo:Streamlined",

  // Main Tabs
  "PhotosTab": "Photos",
  "ScenesTab": "Scenes",
  "DevicesTab": "Devices",
  "RoomsTab": "Rooms",

  "Login": "LockedWelcome", // Use modifier for select account flow

  // Device Control
  "Devices": "Devices", // Use modifier to specify type
  "DeviceControl": "Devices", // Use modifier to specify type
  "Rooms": "Rooms:Specific"
  "DeviceControlByRoom": "Rooms:Specific",
  "Settings": "Settings",
  "DeviceSettings": "DeviceSettings",
  "RoomSettings": "RoomSettings", // Use modifier to specify new or update name
  "NowPlaying": "NowPlaying",
  "MusicNowPlaying": "NowPlaying",
  "Favorites": "Favorites",
  "MusicFavorites": "Favorites",
  "RemoveBrilliantControl": "RemoveBrilliantControl",
  "LiveView": "LiveView",

  // Color
  "LightColor": "LightColor", // deprecated
  "PresetColorPicker": "PresetColorPicker",
  "ColorPicker": "ColorPicker",

  // Account
  "EditAccount": "AccountSettings",
  "EditAccountEditSettings": "AccountSettings",

  // Settings
  "DemoMode": "DemoMode",
  "ForgetHome": "ForgetHome",
  "ForgotPin": "ForgotPin",
  "SettingsDemoMode": "DemoMode",
  "SettingsForgetHome": "ForgetHome",
  "HomeLogin": "HomeLogin", // Use modifier for forgot passcode flow
  "HomePasscodeReset": "HomeLogin", // Use modifier for forgot passcode flow
  // Home Management
  "HomeManagement": "HomeManagement",
  "HomeManagementDevices": "HomeManagement",
  "HomeManagementUpdateName": "HomeManagementUpdateName",
  "SwitchHome": "SwitchHome",
  "ChooseJoinedHome": "SwitchHome",
  "NoJoinedHomes": "SwitchHome:Empty",
  "HomeSettings": "HomeSettings",
  "PrivacySettings": "PrivacySettings",
  "SwitchEnvironment": "SwitchEnvironment",

  // Help
  "Help": "Help",
  "ZDKHelpCenterOverviewController": "ZendeskFAQ",
  "ZDCChat": "ZendeskLiveChat",
  "Messaging": "ZendeskLiveChatV2",
  "RequestList": "ZendeskRequestList",
  "RequestContainerController": "ZendeskRequest",
  "ReportIssue": "ZendeskRequest",
  "FAQ": "ZendeskFAQ",
  "Coordinating": "ZendeskFAQ",
  "ZDKArticle": "ZendeskArticle",
  "ViewArticle": "ZendeskArticle",
  "LiveChat": "ZendeskLiveChat",
  "MFMailComposeInternal": "MailComposer",

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
  "UploadLoading": "Photos:Upload", // Use Modifier for status
  "UploadDisabled": "Photos:Upload:Disabled",
  "PUPhotoPickerHost": "Photos:Upload:SelectPhoto",
  "CAMImagePickerCamera": "Photos:Upload:TakePhoto",
  "Crop": "Photos:Upload:CropPhoto",
  "BRLCrop": "Photos:Upload:CropPhoto",
  "BRLPhotoPicker": "Photos:Upload:SelectPhoto",
  "PickImage": "Photos:Upload:PhotoSheet", // Android Select/Take Photo sheet
  "CropImage": "Photos:Upload:CropPhoto",

  // Pairing Flow
  "Setup": "Launch",
  "ChooseHome": "PairV2:JoinHome", // Use modifier for add home flow
  "PairingLoading": "PairV2:Login:Loading",
  "SetupLoading": "PairV2:Login:Loading",
  "EnterCode": "PairV2:Login:Verification", // User modifier for error, add home flow and reset passcode
  "PairingEnterCode": "PairV2:Login:Verification", // User modifier for error, add home flow and reset passcode
  "EnterCodeSuccess": "PairV2:Login:Success",
  "SelectAccount": "PairV2:Login:ChooseAccount",
  "CreateAccount": "PairV2:Login:NewAccount",
  "CreateAccountSuccess": "PairV2:SetupAccount:Success",
  "SetupSuccess": "PairV2:SetupAccount:Success",
  "JoinHomeSuccess": "PairV2:SetupAccount:Success",
  "EnterEmail": "PairV2:Login:AddHome",
  "NoHomes": "PairV2:JoinHome:Empty",
  "SetupError": "PairV2:Error",
  "PairingError": "PairV2:Error",
  "EnterEmailError": "PairV2:Error",
  "WebView": "WebView",
  "JoinHomeSuccess": "PairV2:SetupAccount:Success:AddHome",
  "CreateHome": "PairV2:CreateHome",

  // Debug
  "Debug": "Debug",
  "DebugStats": "DebugStats",
  "DebugFlags": "DebugFlags",

  // Demo
  "DemoWalkthrough": "DemoWalkthrough",

  // Scenes
  "SceneChooseAction": "SceneChooseAction",
  "SceneCopy": "SceneCopy",
  "SceneCreate": "SceneCreate",
  "SceneEdit": "SceneEdit",
  "SceneImageSelection": "SceneImageSelection",
  "SceneIconEdit": "SceneImageSelection",
  "SceneEditAction": "SceneEditAction",
  "SceneActionEdit": "SceneEditAction",
  "SceneTimerEdit": "SceneTimerEdit",
  "ScenePartnerScenes": "AddPartnerScene",
  "SceneViewAction": "PartnerSceneAction",

  // Installation Guide
  // iOS
  "IGHorizontal": "InstallationGuide",
  "IGVertical": "InstallationGuide",
  "IGBarcode": "InstallationGuide:Barcode",
  "IGWirePhotos": "InstallationGuide:WirePhotos",
  "IGInstallSuccess": "InstallationGuide:Success",
  "IGOverview": "InstallationGuide:Overview",
  "InstallationArchive": "InstallationGuide:Archive",
  // Android
  "Horizontal": "InstallationGuide"
  "Vertical": "InstallationGuide",
  "GuideBarcode": "InstallationGuide:Barcode",
  "WirePhotos": "InstallationGuide:WirePhotos",
  "InstallSuccess": "InstallationGuide:Success",
  "Overview": "InstallationGuide:Overview",
  "Archive": "InstallationGuide:Archive",
  "ControlInstallation": "InstallationGuide:ControlInstallation",

  // Switch Provisioning
  // iOS
  "SwitchProvisioning": "Provisioning:SwitchProvisioning",
  "DeviceSetupMinDimLevel": "Provisioning:MinDimLevel",
  "DeviceSetupForwarding": "Provisioning:ForwardingAddress",
  "DeviceSetupOwner": "Provisioning:Owner",
  "IGWarning": "Provisioning:Warning", // Use modifier to specify warning type
  // Android
  "ProvisionProgress": "Provisioning", // adds SwitchProvisioning modifier to match iOS
  "GuideMinDimLevel": "Provisioning:MinDimLevel",
  "GuideForwardingAddress": "Provisioning:ForwardingAddress",
  "GuideWarning": "Provisioning:Warning", // Use modifier to specify warning type
  "GuideRoomSelection": "Provisioning", // adds RoomSelection modifier

  // Install Device Setup
  "ActiveDeviceSetup": "ActiveDeviceSetup",
  "BRLDevicePicker": "BRLDevicePicker",
  "AddDevice": "AddDevice",
  "AddLight": "AddLight",
  "SpecifyNumLights": "SpecifyNumLights",
  "ExistingFixtures": "ExistingFixtures",
  "DeviceGroupOverview": "DeviceGroupOverview",
}

const string MOBILE_OVERLAY_NAME_ATTENTION_NEEDED = "AttentionNeeded"
const string MOBILE_OVERLAY_NAME_CANNOT_DELETE_ROOM = "DeleteRoom:CannotDelete"
const string MOBILE_OVERLAY_NAME_CONNECTIVITY_ERROR = "ConnetivityError"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVAL_ERROR = "ControlRemoval:Error"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVAL_UNSUPPORTED = "ControlRemoval:Unsupported"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVED = "ControlRemoved"
const string MOBILE_OVERLAY_NAME_CURRENT_DEVICE_DEAUTHED = "CurrentDeviceDeauthed"
const string MOBILE_OVERLAY_NAME_CUSTOM_ART_PROMPT = "CustomArtPrompt"
const string MOBILE_OVERLAY_NAME_DELETE_INSTALLATION = "DeleteInstallation"
const string MOBILE_OVERLAY_NAME_DELETE_INSTALLATION_ERROR = "DeleteInstallation:Error"
const string MOBILE_OVERLAY_NAME_DELETE_ROOM = "DeleteRoom"
const string MOBILE_OVERLAY_NAME_DELETE_ROOM_ERROR = "DeleteRoom:Error"
const string MOBILE_OVERLAY_NAME_DEVICE_SETTINGS_ERROR = "DeviceSettings:Error"
const string MOBILE_OVERLAY_NAME_DEVICES_DEMO_INFO = "Demo:Devices"
const string MOBILE_OVERLAY_NAME_EMPTY_ROOM = "Rooms:Empty"
const string MOBILE_OVERLAY_NAME_EXIT_DEMO = "Demo:Exit"
const string MOBILE_OVERLAY_NAME_FORCE_UPGRADE = "ForceUpgrade"
const string MOBILE_OVERLAY_NAME_FORGET_HOME = "ForgetHome"
const string MOBILE_OVERLAY_NAME_GRANT_PHOTO_PERMISSIONS = "Photos:Upload:GrantPermission"
const string MOBILE_OVERLAY_NAME_HIGH_WATTAGE_LOAD = "HighWattageLoad"
const string MOBILE_OVERLAY_NAME_HOME_JOINED = "HomeJoined"
const string MOBILE_OVERLAY_NAME_HOME_MANAGEMENT_UPDATE_NAME_ERROR = "HomeManagement:UpdateName:Error"
const string MOBILE_OVERLAY_NAME_JOIN_ANOTHER_HOME = "JoinAnotherHome"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_SURVEY = "LiveViewSurvey"
const string MOBILE_OVERLAY_NAME_LOCK_STATE_JAMMED = "Jammed"
const string MOBILE_OVERLAY_NAME_LOCK_STATE_UNKNOWN = "Unknown"
const string MOBILE_OVERLAY_NAME_MOBILE_REMOVED = "MobileRemoved"
const string MOBILE_OVERLAY_NAME_MOBILE_REMOVAL_ERROR = "MobileRemoval:Error"
const string MOBILE_OVERLAY_NAME_OPEN_SONOS = "OpenSonos"
const string MOBILE_OVERLAY_NAME_PASSCODE_RESET_FAILED = "PasscodeResetFailed"
const string MOBILE_OVERLAY_NAME_PHOTOS_DEMO_INFO = "Demo:Photos"
const string MOBILE_OVERLAY_NAME_PROVISIONING_CODE_LOCATION = "Provisioning:WhereToFindCode"
const string MOBILE_OVERLAY_NAME_PROVISIONING_CODE_READ_ERROR = "Provisioning:CodeReadError"
const string MOBILE_OVERLAY_NAME_PROVISIONING_CREATE_MESH_NETWORK = "Provisioning:CreateMesh"
const string MOBILE_OVERLAY_NAME_PROVISIONING_CREATE_MESH_NETWORK_ERROR = "Provisioning:CreateMesh:Error"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_BLUETOOTH = " Provisioning:Error:Bluetooth"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_GENERIC = " Provisioning:Error"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_MESH = " Provisioning:Error:Mesh"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_TIMEOUT = " Provisioning:Timeout"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_VENDOR = " Provisioning:Error:Vendor"
const string MOBILE_OVERLAY_NAME_PROVISIONING_SUCCESS = "Provisioning:Success"
const string MOBILE_OVERLAY_NAME_RENAME_ROOM_ERROR = "RenameRoom:Error"
const string MOBILE_OVERLAY_NAME_RESET_NAME = "ResetName"
const string MOBILE_OVERLAY_NAME_RESET_SETTINGS = "ResetSettings"
const string MOBILE_OVERLAY_NAME_REMOVE_THIRDPARTY_DEVICE = "RemoveThirdpartyDevice"
const string MOBILE_OVERLAY_NAME_ROOM_SETTINGS_CREATE_ERROR = "RoomSettings:Create:Error"
const string MOBILE_OVERLAY_NAME_ROOM_SETTINGS_UPDATE_NAME_ERROR = "RoomSettings:UpdateName:Error"
const string MOBILE_OVERLAY_NAME_ROOMS_DEMO_INFO = "Demo:Rooms"
const string MOBILE_OVERLAY_NAME_SCENES_DEMO_INFO = "Demo:Scenes"
const string MOBILE_OVERLAY_NAME_SCENE_ACTION_DELETE = "SceneAction:Delete"
const string MOBILE_OVERLAY_NAME_SCENE_DELETE = "Scene:Delete"
const string MOBILE_OVERLAY_NAME_TOGGLE_AIRPLANE = "ToggleAirplaneMode"
const string MOBILE_OVERLAY_NAME_UNCONFIGURED_DEVICE = "UnconfiguredDevice"

