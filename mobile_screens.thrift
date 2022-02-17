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
  "RoomSettings": "RoomSettings", // Use modifier to specify new or update name
  "NowPlaying": "NowPlaying",
  "MusicNowPlaying": "NowPlaying",
  "Favorites": "Favorites",
  "MusicFavorites": "Favorites",
  "RemoveBrilliantControl": "RemoveDevice",
  "RemoveBrilliantDevice": "RemoveDevice",
  "LiveView": "LiveView",
  "SecuritySingle": "Devices:Security",
  "SecurityPin": "EnterPin",

  // Device Settings
  "DeviceSettings": "DeviceSettings",
  "ChangeMeshOwner": "ChangeMeshOwner",
  "SliderSettings": "SliderSettings",
  "GestureSettings": "GestureSettings",
  "AudioSettings": "AudioSettings",
  "DisplaySettings": "DisplaySettings",
  "DisplayOptions": "DisplayOptions",
  "WidgetPreferences": "WidgetPreferences",
  "DeviceSelection": "DeviceSelection",
  "UpdateTimeZone": "TimeZone:Select",  // iOS
  "UpdateZipCode": "HomeLocation",  // iOS  
  "LocationTimezone": "TimeZone",  // Android
  "LocationZipcode": "HomeLocation",  // Android
  "LocationInformation": "LocationInformation",
  "TimeZoneConfirmation": "TimeZone", // iOS
  "LocationTimeZoneChange": "TimeZone:Select",
  "MeshLEDSettings": "LEDPreferences",
  "LEDBrightness": "LEDPreferences",

  // Color
  "LightColor": "LightColor", // deprecated
  "PresetColorPicker": "PresetColorPicker",
  "ColorPicker": "ColorPicker",

  // Account
  "EditAccount": "AccountSettings",
  "EditAccountEditSettings": "AccountSettings",
  "ResetPin": "EnterPin",
  "EditAccountResetPin": "EnterPin",

  // Settings
  "DemoMode": "DemoMode",
  "ForgetHome": "ForgetHome",
  "ForgotPin": "ForgotPin",
  "SettingsDemoMode": "DemoMode",
  "SettingsForgetHome": "ForgetHome",
  "HomeLogin": "HomePasscode", // Use modifier for forgot passcode flow
  "HomeLoginEnterCode": "HomePasscode:Verification:Reset",
  "HomePasscodeReset": "HomePasscode", // Use modifier for forgot passcode flow
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
  "Troubleshoot": "Troubleshoot",
  "DeleteHomeEnterCode": "PairV2:Login:Verification:DeleteHome", // Making Android match iOS, which reuses the enter code screen for delete home
  "DeleteHome": "DeleteHome",

  // Help
  "Help": "Help",
  "ZDKHelpCenterOverviewController": "ZendeskFAQ",
  "ZDCChat": "ZendeskLiveChat",
  "HelpCenter": "ZendeskHelpCenter",
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
  "EnterCode": "PairV2:Login:Verification", // Use modifier for error, add home flow, reset passcode, and delete home
  "PairingEnterCode": "PairV2:Login:Verification", // Use modifier for error, add home flow and reset passcode
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
  "SetHomePasscodeChapter": "SetHomePasscode",
  "SetHomePasscodeSuccess": "HomePasscodeSuccess",
  "MFLogin": "MFLogin",
  // iOS
  "ChooseBuilding": "MFChooseBuilding",
  "ChooseUnit": "MFChooseUnit",
  // Android
  "MFEnterCode": "PairV2:Login:Verification:LogInOperator",
  "MFCreatePin": "EnterPin",
  "MFChooseBuilding": "MFChooseBuilding",
  "MFChooseUnit": "MFChooseUnit",

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
  "ScenesSelection": "ScenesSelection",

  // Installation Guide
  // iOS
  "IGHorizontal": "InstallationGuide",
  "IGVertical": "InstallationGuide",
  "IGBarcode": "InstallationGuide:QRCode",
  "IGWirePhotos": "InstallationGuide:WirePhotos",
  "IGInstallSuccess": "InstallationGuide:Success",
  "IGOverview": "InstallationGuide:Overview",
  "InstallationArchive": "InstallationGuide:Archive",
  "LargeHomeSupport": "LargeHomeSupport",
  "ProgressionEducation": "InstallationGuide:ProgressionEducation",
  "ControlLowWattage": "InstallationGuide", // Guide framework adds "DeviceSetupIsLowWattage" modifier
  "IGCircuitLoadIdentification": "CircuitLoadIdentification",
  "IGInstallPartialSuccess": "InstallationGuide:PartialSuccess",
  "IGIntegrationSetupComplete": "InstallationGuide", // Guide framework adds "IntegrationConfirm" modifer
  "IGMarkCompleteProgress": "CompleteIntegrationProgress",
  "IGMarkCompleteMatch": "MultipleDeviceTypes",
  // Android
  "Horizontal": "InstallationGuide"
  "Vertical": "InstallationGuide",
  "GuideBarcode": "InstallationGuide:QRCode",
  "GuideLargeHomeSupport": "LargeHomeSupport"
  "GuideProgressionEducation": "InstallationGuide:ProgressionEducation"
  "GuideLowWattage": "InstallationGuide",  // Guide framework adds "DeviceSetupIsLowWattage" modifier
  "WirePhotos": "InstallationGuide:WirePhotos",
  "InstallSuccess": "InstallationGuide:Success",
  "InstallPartialSuccess": "InstallationGuide:PartialSuccess",
  "Overview": "InstallationGuide:Overview",
  "Archive": "InstallationGuide:Archive",
  "ControlInstallation": "InstallationGuide:ControlInstallation",
  "CustomizeSwitch": "CustomizeSwitch",
  "IGSwitchWallPlate": "BrilliantSwitchConnectSelector",
  "GuideMultiwayControlSupport": "MultiwayControlSupport",
  "GuideLEDSettings": "LEDPreferences:InstallationGuide",
  "InstallIntegrationSetupComplete": "InstallationGuide:IntegrationConfirm",
  "MarkInstallationCompleteProgress": "CompleteIntegrationProgress",
  "MarkInstallationCompleteMatch": "MultipleDeviceTypes",

  // Control Configuration
  "ControlSelection": "ControlSelection"

  // Switch Provisioning
  "FreePairing": "BluetoothDevicesDetected",
  // iOS
  "SwitchProvisioning": "Provisioning", // Use modifier to specify device type
  "ControlProvisioning": "Provisioning", // Use modifier to specify device type
  "DeviceSetupMinDimLevel": "Provisioning:MinDimLevel",
  "DeviceSetupForwarding": "Provisioning:ForwardingAddress",
  "DeviceSetupOwner": "Provisioning:Owner",
  "IGWarning": "Provisioning:Warning", // Use modifier to specify warning type
  // Android
  "SwitchProvisionProgress": "Provisioning", // Guide framework adds "SwitchProvisioning" modifier to match iOS
  "ControlProvisionProgress": "Provisioning", // Guide framework adds "ControlProvisioning" modifier to match iOS
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
  "DeviceGroupOverview": "DeviceGroupOverview:Incomplete",
  "DeviceGroupHistory": "DeviceGroupOverview:History",
  "InstallationHistory": "DeviceGroupOverview:History",

  // Third Party Device Setup
  "ThirdPartyDevicePicker": "WorksWith",
  "EnterOtherDevice": "ThirdParty:EnterOtherDevice",
  "ThirdPartyDeviceAddIntegration": "ThirdParty:AddDevice",
  "EnterDeviceName": "ThirdParty:EnterDeviceName",
  "DeviceDiscoverySpinner": "ThirdParty:DiscoverySpinner",
  "ThirdPartyAuthProgress": "ThirdParty:AccountLinkingProgress",
  "ThirdPartyAuthSuccess": "ThirdParty:AccountLinkingSuccess",
  "ThirdPartySettings": "ThirdParty:Settings",

  // DeleteAccount
  "DeleteAccountExistingHomes": "ExistingHomes",
  "DeleteAccountConfirmation": "AccountDeletion",
  "DeleteAccountCode": "PairV2:Login:Verification:DeleteAccount", // Making Android match iOS, which reuses the enter code screen for delete account
}

const string MOBILE_OVERLAY_NAME_APP_FEEDBACK_ENJOYING = "AppFeedback:Enjoying"
const string MOBILE_OVERLAY_NAME_APP_FEEDBACK_SURVEY = "AppFeedback:Survey"
const string MOBILE_OVERLAY_NAME_APP_FEEDBACK_THANKS = "AppFeedback:Thanks"
const string MOBILE_OVERLAY_NAME_ARM_STATE_ACTIVE = "ArmStateActive"
const string MOBILE_OVERLAY_NAME_ASSIGN_SLIDER = "AssignSlider"
const string MOBILE_OVERLAY_NAME_ATTENTION_NEEDED = "AttentionNeeded"
const string MOBILE_OVERLAY_NAME_ATTENTION_NEEDED_MULTIPLE = "AttentionNeeded:Multiple"
const string MOBILE_OVERLAY_NAME_AUTHORIZATION_EXPIRED = "AuthorizationExpired"
const string MOBILE_OVERLAY_NAME_BLUETOOTH_GENERIC_ERROR = "BluetoothGenericErrorOverlay"
const string MOBILE_OVERLAY_NAME_BACK_ON_PROVISIONING = "Provisioning:ExitWarning"
const string MOBILE_OVERLAY_NAME_CANNOT_DELETE_ROOM = "DeleteRoom:CannotDelete"
const string MOBILE_OVERLAY_NAME_CHANGE_MESH_OWNER = "ChangeMeshOwner"
const string MOBILE_OVERLAY_NAME_CIRCUIT_LOAD_IDENTIFICATION_ERROR = "CircuitLoadIdentification:WiringError"
const string MOBILE_OVERLAY_NAME_CIRCUIT_LOAD_IDENTIFICATION_HELP = "CircuitLoadIdentification:LoadSideDevice"
const string MOBILE_OVERLAY_NAME_CONNECTIVITY_ERROR = "ConnetivityError"
const string MOBILE_OVERLAY_NAME_CONTROL_CONFIGURATION_ERROR_GENERIC = "Configuration:Control:Error"
const string MOBILE_OVERLAY_NAME_CONTROL_CONFIGURATION_INCORRECT_DEVICE_TYPE = "Configuration:Control:IncorrectDeviceType"
const string MOBILE_OVERLAY_NAME_CONTROL_LOAD_CONFIG_ERROR = "ControlLoadConfig:Error"
const string MOBILE_OVERLAY_NAME_CONTROL_NEXT_STEPS = "ControlNextSteps"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVAL_ERROR = "ControlRemoval:Error"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVAL_UNSUPPORTED = "ControlRemoval:Unsupported"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVED = "ControlRemoved"
const string MOBILE_OVERLAY_NAME_CONTROL_SCAN_SWITCH_INSTALL = "ControlScanSwitchInstall"
const string MOBILE_OVERLAY_NAME_CURRENT_DEVICE_DEAUTHED = "CurrentDeviceDeauthed"
const string MOBILE_OVERLAY_NAME_CURRENT_GANG_INFO = "CurrentGangInfo"
const string MOBILE_OVERLAY_NAME_CUSTOM_ART_PROMPT = "CustomArtPrompt"
const string MOBILE_OVERLAY_NAME_DELETE_ACCOUNT_ERROR = "DeleteAccountError"
const string MOBILE_OVERLAY_NAME_DELETE_ACCOUNT_CONFIRMATION = "DeleteAccountConfirmation"
const string MOBILE_OVERLAY_NAME_DELETE_DEVICE_CONFIRMATION = "DeleteDeviceConfirmation"
const string MOBILE_OVERLAY_NAME_DELETE_HOME_CONFIRMATION = "DeleteHomeConfirmation"
const string MOBILE_OVERLAY_NAME_DELETE_HOME_SUCCESS = "DeleteHomeSuccess"
const string MOBILE_OVERLAY_NAME_DELETE_HOME_ERROR = "DeleteHomeError"
const string MOBILE_OVERLAY_NAME_DELETE_INSTALLATION = "DeleteInstallation"
const string MOBILE_OVERLAY_NAME_DELETE_INSTALLATION_ERROR = "DeleteInstallation:Error"
const string MOBILE_OVERLAY_NAME_IS_THIS_LIGHT = "ThirdParty:IsThisLight"
const string MOBILE_OVERLAY_NAME_DELETE_ROOM = "DeleteRoom"
const string MOBILE_OVERLAY_NAME_DELETE_ROOM_ERROR = "DeleteRoom:Error"
const string MOBILE_OVERLAY_NAME_DETECTING_DEVICES = "DetectingDevices"
const string MOBILE_OVERLAY_NAME_DETECTING_DEVICES_ERROR = "DetectingDevices:Error"
const string MOBILE_OVERLAY_NAME_DEVICE_ADDED = "ThirdParty:DeviceAdded"
const string MOBILE_OVERLAY_NAME_DEVICE_OFFLINE = "ThirdParty:DeviceOffline"
const string MOBILE_OVERLAY_NAME_DEVICE_NOT_FOUND = "SliderSettings:DeviceNotFound"
const string MOBILE_OVERLAY_NAME_DEVICE_SETTINGS_ERROR = "DeviceSettings:Error"
const string MOBILE_OVERLAY_NAME_DEVICES_DEMO_INFO = "Demo:Devices"
const string MOBILE_OVERLAY_NAME_DISCONNECTED = "Disconnected"
const string MOBILE_OVERLAY_NAME_DISCONNECTED_PARTIAL = "Disconnected:Partial"
const string MOBILE_OVERLAY_NAME_EDIT_ROOMS = "EditRooms"
const string MOBILE_OVERLAY_NAME_EMPTY_ROOM = "Rooms:Empty"
const string MOBILE_OVERLAY_NAME_EXIT_DEMO = "Demo:Exit"
const string MOBILE_OVERLAY_NAME_FAILED_COMPATIBILITY = "FailedCompatibility"
const string MOBILE_OVERLAY_NAME_FREE_PAIRING_NO_DEVICES = "FreePairing:NoDevices"
const string MOBILE_OVERLAY_NAME_FREE_PAIRING_READY_TO_CONNECT = "FreePairing:ReadyToConnect"
const string MOBILE_OVERLAY_NAME_FORCE_UPGRADE = "ForceUpgrade"
const string MOBILE_OVERLAY_NAME_FOREIGN_QR_SCAN = "ForeignQRScan"
const string MOBILE_OVERLAY_NAME_FORGET_HOME = "ForgetHome"
const string MOBILE_OVERLAY_NAME_GRANT_PHOTO_PERMISSIONS = "Photos:Upload:GrantPermission"
const string MOBILE_OVERLAY_NAME_HIGH_HUMIDITY = "AttentionNeeded:HighHumidity"
const string MOBILE_OVERLAY_NAME_HIGH_TEMPERATURE = "AttentionNeeded:HighTemperature"
const string MOBILE_OVERLAY_NAME_HIGH_WATTAGE = "HighWattage"
const string MOBILE_OVERLAY_NAME_HIGH_WATTAGE_LOAD = "HighWattageLoad"
const string MOBILE_OVERLAY_NAME_HONEYWELL_SETUP_ERROR = "HoneywellSetupError"
const string MOBILE_OVERLAY_NAME_MF_HOME_ACCESS_DISABLED = "MFHomeAccessDisabled"
const string MOBILE_OVERLAY_NAME_HOME_JOINED = "HomeJoined"
const string MOBILE_OVERLAY_NAME_HOME_MANAGEMENT_UPDATE_NAME_ERROR = "HomeManagement:UpdateName:Error"
const string MOBILE_OVERLAY_NAME_INSTALL_COMPLETED = "Success:InstallCompleted"
const string MOBILE_OVERLAY_NAME_INSTALL_COMPLETION_FAILED = "InstallCompletion:Failed"
const string MOBILE_OVERLAY_NAME_INSTALL_COMPLETION_PROMPT = "InstallCompletion:Prompt"
const string MOBILE_OVERLAY_NAME_INSTALLATION_FEEDBACK = "InstallationFeedback"
const string MOBILE_OVERLAY_NAME_INSTALLATION_RATING = "InstallationRating"
const string MOBILE_OVERLAY_NAME_JOIN_ANOTHER_HOME = "JoinAnotherHome"
const string MOBILE_OVERLAY_NAME_LEAK_DETECTED = "AttentionNeeded:LeakDetected"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_BUSY = "LiveView:Disabled:Busy"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_OPERATOR = "LiveView:Disabled:Operator"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_PHONE_UNSUPPORTED = "LiveView:Disabled:PhoneUnsupported"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_PRIVACY = "LiveView:Disabled:Privacy"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_SOFTWARE_VERSION = "LiveView:Disabled:SoftwareVersion"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_UNSUPPORTED = "LiveView:Disabled:Unsupported"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_SURVEY = "LiveViewSurvey"
const string MOBILE_OVERLAY_NAME_CONNECTION_LOADING = "ConnectionLoading"
const string MOBILE_OVERLAY_NAME_LOCK_STATE_JAMMED = "Jammed"
const string MOBILE_OVERLAY_NAME_LOCK_STATE_UNKNOWN = "Unknown"
const string MOBILE_OVERLAY_NAME_LOW_TEMPERATURE = "AttentionNeeded:LowTemperature"
const string MOBILE_OVERLAY_NAME_MESH_CRITICAL_FIRMWARE_UPDATE = "MeshFirmwareUpdate:Critical"
const string MOBILE_OVERLAY_NAME_MESH_FIRMWARE_UPDATE = "MeshFirmwareUpdate"
const string MOBILE_OVERLAY_NAME_MF_HOMES_LISTING = "MFHomesListing"
const string MOBILE_OVERLAY_NAME_MF_RESET_PIN = "MFResetPin"
const string MOBILE_OVERLAY_NAME_MF_UNIT_OCCUPIED = "MFUnitOccupied"
const string MOBILE_OVERLAY_NAME_MOBILE_REMOVED = "MobileRemoved"
const string MOBILE_OVERLAY_NAME_MOBILE_REMOVAL_ERROR = "MobileRemoval:Error"
const string MOBILE_OVERLAY_NAME_MULTIWAY_DEVICE = "MultiwayDevice"
const string MOBILE_OVERLAY_NAME_NO_DEVICES_FOUND = "ThirdParty:DevicesFound"
const string MOBILE_OVERLAY_NAME_NO_ONLINE_CONTROL = "NoOnlineControl"
const string MOBILE_OVERLAY_NAME_NO_QR_CODE = "Provisioning:NoQRCode"
const string MOBILE_OVERLAY_NAME_OFFLINE_DEVICE = "OfflineDevice"
const string MOBILE_OVERLAY_NAME_OPEN_SONOS = "OpenSonos"
const string MOBILE_OVERLAY_NAME_OTHER_RECOMMENDATIONS = "OtherRecommendations"
const string MOBILE_OVERLAY_NAME_PASSCODE_RESET_FAILED = "PasscodeResetFailed"
const string MOBILE_OVERLAY_NAME_PHOTOS_DEMO_INFO = "Demo:Photos"
const string MOBILE_OVERLAY_NAME_PIN_UPDATED = "PinUpdated"
const string MOBILE_OVERLAY_NAME_PROVISIONING_CODE_LOCATION = "Provisioning:WhereToFindCode"
const string MOBILE_OVERLAY_NAME_PROVISIONING_CODE_READ_ERROR = "Provisioning:CodeReadError"
const string MOBILE_OVERLAY_NAME_PROVISIONING_CREATE_MESH_NETWORK = "Provisioning:CreateMesh"
const string MOBILE_OVERLAY_NAME_PROVISIONING_CREATE_MESH_NETWORK_ERROR = "Provisioning:CreateMesh:Error"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_BLUETOOTH_OFF = "Provisioning:Error:Bluetooth:Off"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_BLUETOOTH_UNAUTHORIZED = "Provisioning:Error:Bluetooth:Unauthorized"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_BLUETOOTH_UNSUPPORTED = "Provisioning:Error:Bluetooth:Unsupported"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_GENERIC = "Provisioning:Error"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_MESH = "Provisioning:Error:Mesh"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_TIMEOUT = "Provisioning:Timeout"
const string MOBILE_OVERLAY_NAME_PROVISIONING_ERROR_VENDOR = "Provisioning:Error:Vendor"
const string MOBILE_OVERLAY_NAME_PROVISIONING_NO_ONLINE_CONTROL = "ProvisioningNoOnlineControl"
const string MOBILE_OVERLAY_NAME_PROVISIONING_SUCCESS = "Provisioning:Success"
const string MOBILE_OVERLAY_NAME_RENAME_ROOM_ERROR = "RenameRoom:Error"
const string MOBILE_OVERLAY_NAME_RESET_NAME = "ResetName"
const string MOBILE_OVERLAY_NAME_RESET_SETTINGS = "ResetSettings"
const string MOBILE_OVERLAY_NAME_REMOVE_DEVICE_FAILED = "RemoveDevice:Failed"
const string MOBILE_OVERLAY_NAME_REMOVE_DEVICE_OFFLINE = "RemoveDevice:Offline"
const string MOBILE_OVERLAY_NAME_REMOVE_DEVICE_ONLINE = "RemoveDevice:Online"
const string MOBILE_OVERLAY_NAME_REMOVE_DEVICE_SUCCESS = "RemoveDevice:Confirmed"
const string MOBILE_OVERLAY_NAME_REMOVE_THIRDPARTY_DEVICE = "RemoveThirdpartyDevice"
const string MOBILE_OVERLAY_NAME_RESTART_CONTROL = "RestartControl"
const string MOBILE_OVERLAY_NAME_RESTART_CONTROL_ERROR = "RestartControlError"
const string MOBILE_OVERLAY_NAME_ROOM_SETTINGS_CREATE_ERROR = "RoomSettings:Create:Error"
const string MOBILE_OVERLAY_NAME_ROOM_SETTINGS_NEW = "RoomSettings:New"
const string MOBILE_OVERLAY_NAME_ROOM_SETTINGS_UPDATE_NAME_ERROR = "RoomSettings:UpdateName:Error"
const string MOBILE_OVERLAY_NAME_ROOMS_DEMO_INFO = "Demo:Rooms"
const string MOBILE_OVERLAY_NAME_SALTO_CODE_REQUIRED = "SaltoCodeRequired"
const string MOBILE_OVERLAY_NAME_SCENES_DEMO_INFO = "Demo:Scenes"
const string MOBILE_OVERLAY_NAME_SCENE_ACTION_DELETE = "SceneAction:Delete"
const string MOBILE_OVERLAY_NAME_SCENE_ACTION_MERGED = "SceneAction:Merged"
const string MOBILE_OVERLAY_NAME_SCENE_DELETE = "Scene:Delete"
const string MOBILE_OVERLAY_NAME_SCENE_EXECUTED = "SceneExecuted"
const string MOBILE_OVERLAY_NAME_SCENE_EXECUTED_FULLY_INVALID = "SceneExecuted:FullyInvalid"
const string MOBILE_OVERLAY_NAME_SCENE_EXECUTED_PARTIALLY_INVALID = "SceneExecuted:PartiallyInvalid"
const string MOBILE_OVERLAY_NAME_SCENE_SECURITY_BACK = "Scene:Security:Back"
const string MOBILE_OVERLAY_NAME_SCENE_SECURITY_EDIT = "Scene:Security:Edit"
const string MOBILE_OVERLAY_NAME_SCENE_INVALID_FULLY = "SceneInvalid:Fully"
const string MOBILE_OVERLAY_NAME_SCENE_INVALID_PARTIAL = "SceneInvalid:Partial"
const string MOBILE_OVERLAY_NAME_SCENE_SELECTED_FULLY_INVALID = "SceneSelected:FullyInvalid"
const string MOBILE_OVERLAY_NAME_SCENE_SELECTED_PARTIALLY_INVALID = "SceneSelected:PartiallyInvalid"
const string MOBILE_OVERLAY_NAME_SECURITY_CO_ALARM = "COAlarm"
const string MOBILE_OVERLAY_NAME_SECURITY_DISABLED = "SecurityDisabled"
const string MOBILE_OVERLAY_NAME_SECURITY_DISARMED_NOT_READY = "SecurityDisarmedNotReady"
const string MOBILE_OVERLAY_NAME_SECURITY_ERROR = "SecurityError"
const string MOBILE_OVERLAY_NAME_SECURITY_FIRE_ALARM = "FireAlarm"
const string MOBILE_OVERLAY_NAME_SECURITY_MEDICAL_ALARM = "MedicalAlarm"
const string MOBILE_OVERLAY_NAME_SETUP_FINISHED = "SetupFinished"
const string MOBILE_OVERLAY_NAME_SKIP_WARNING = "SkipWarning"
const string MOBILE_OVERLAY_NAME_SWITCH_NEXT_STEPS = "SwitchNextSteps"
const string MOBILE_OVERLAY_NAME_SWITCH_RESET = "SwitchReset"
const string MOBILE_OVERLAY_NAME_SWITCH_SCAN_CONTROL_INSTALL = "SwitchScanControlInstall"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_DEVICE_REQUEST = "ThirdParty:Request"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_NOT_AUTHORIZED = "ThirdParty:NotAuthorized"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_RESET_INTEGRATION = "ThirdParty:ResetIntegration"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_RESET_INTEGRATION_FAILURE = "ThirdParty:ResetIntegration:Failure"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_RESET_INTEGRATION_SUCCESS = "ThirdParty:ResetIntegration:Success"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_SECONDARY_USER = "ThirdParty:SecondaryUser"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_URL_ERROR = "ThirdParty:UrlError"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_WORKS_WITH_OPTIONS = "ThirdParty:WorksWithOptions"
const string MOBILE_OVERLAY_NAME_TOGGLE_AIRPLANE = "ToggleAirplaneMode"
const string MOBILE_OVERLAY_NAME_UNASSIGNED_DEVICES = "UnassignedDevices"
const string MOBILE_OVERLAY_NAME_UNCONFIGURED_DEVICE = "UnconfiguredDevice"
const string MOBILE_OVERLAY_NAME_UPDATING_MESH_NETWORK = "UpdatingMeshNetwork"
const string MOBILE_OVERLAY_NAME_VIEW_HOMES = "ViewHomes"
const string MOBILE_OVERLAY_NAME_WRONG_GANG_CONTROL_INSTALL = "WrongGangControlInstall"

