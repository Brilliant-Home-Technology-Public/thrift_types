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

  // Group Control
  "GroupDetail": "ListDevicesScreen:Group",
  "DeviceGroupSettings": "DeviceGroupSettingsScreen",
  "DeviceSelectionV2": "AddDevicesScreen", // iOS use modifier to specify group
  "DeviceGroupSettingsDeviceSelectionV2": "AddDevicesScreen:Group", // Android
  "DeviceGroupCreationSuccess": "GroupCreatedScreen:Success",
  "GenericAction": "GenericAction", // iOS use modifier to specify action
  "AssignDeviceGroup": "GenericAction:AssignDeviceGroup", // Android
  "ControlSelectionForGroup": "ControlSelection:AssignDeviceGroup", // Android

  // Device Settings
  "DeviceSettings": "DeviceSettings",
  "ChangeMeshOwner": "ChangeMeshOwner",
  "SliderSettings": "SliderSettings",
  "GestureSettings": "GestureSettings",
  "AudioSettings": "AudioSettings",
  "DisplaySettings": "DisplaySettings",
  "DisplayOptions": "DisplayOptions",
  "WidgetPreferences": "WidgetPreferences",
  "MotionSettings": "MotionSettings",
  "MotionSensitivity": "MotionSensitivity",
  "MotionHours": "MotionHours",
  "DeviceSelection": "DeviceSelection", // iOS
  "MotionSettingsDeviceSelection": "DeviceSelection", // Android
  "DeviceSettingsDeviceSelection": "DeviceSelection", // Android
  "UpdateTimeZone": "TimeZone:Select",  // iOS
  "UpdateZipCode": "HomeLocation",  // iOS  
  "LocationTimezone": "TimeZone",  // Android
  "LocationZipcode": "HomeLocation",  // Android
  "LocationInformation": "LocationInformation",
  "TimeZoneConfirmation": "TimeZone", // iOS
  "LocationTimeZoneChange": "TimeZone:Select",
  "MeshLEDSettings": "LEDPreferences",
  "LEDBrightness": "LEDPreferences",
  "HomeAssistantsSettings": "HomeAssistantsSettings",
  "WakewordOptions": "WakewordOptions",
  "HomeKitReset": "HomeKitReset",
  "TroubleshootAssistants": "TroubleshootAssistants",
  "LightFade": "FadeInFadeOut",

  // Color
  "LightColor": "LightColor", // deprecated
  "PresetColorPicker": "PresetColorPicker",
  "ColorPicker": "ColorPicker",

  // Account
  "EditAccount": "AccountSettings",
  "EditAccountEditSettings": "AccountSettings",
  "ResetPin": "EnterPin",
  "EditAccountResetPin": "EnterPin",
  "AppLock": "AppLock",

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
  "AccountDisplay": "HomeSettings:DisplayUser",
  "HomeManagement": "HomeManagement",
  "HomeManagementDevices": "HomeManagement",
  "HomeManagementUpdateName": "HomeManagementUpdateName",
  "SwitchHome": "MyHomes",
  "ChooseJoinedHome": "MyHomes",
  "NoJoinedHomes": "MyHomes:Empty",
  "HomeSettings": "HomeSettings",
  "HomeResident": "HomeSettings:DisplayUser"
  "PrivacySettings": "PrivacySettings",
  "RemoteVideoAccess": "RemoteVideoAccess",
  "RemoveUserFromHome": "RemoveConfirm",
  "ChildLock": "ChildLock",
  "SwitchEnvironment": "SwitchEnvironment",
  "Troubleshoot": "Troubleshoot",
  "DeleteHomeEnterCode": "PairV2:Login:Verification:DeleteHome", // Making Android match iOS, which reuses the enter code screen for delete home
  "DeleteHome": "DeleteHome",
  "HomeDeviceGroups": "HomeDeviceGroups", // IOS
  "ViewDeviceGroups": "HomeDeviceGroups", // Android
  // Home Automation
  "HomeMotionSettings": "Automation:MotionSettingsOverview",
  // FeatureCallouts
  "WhatsNewSummary": "NewFeaturesSummary",
  "WhatsNewVersion": "NewFeaturesVersion",
  // Property Access
  "AccessCodes": "PropertyAccessCredentials",
  // iOS
  "SwipeablePage": "SwipeablePage", // Use Modifier for usage type
  // Android
  "WhatsNewPage": "SwipeablePage:NewFeatures",
  "DisplayUnit": "DisplayUnit",

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
  "InviteHomeMembers": "InviteHomeMembers",
  "SendInvites": "InviteHomeMembersList",
  "MFLogin": "MFLogin",
  "HomeSetupComplete": "HomeSetupComplete",
  // iOS
  "ChooseBuilding": "MFChooseBuilding",
  "ChooseUnit": "MFChooseUnit",
  // Android
  "MFEnterCode": "PairV2:Login:Verification:LogInOperator",
  "MFCreatePin": "EnterPin",
  "MFChooseBuilding": "MFChooseBuilding",
  "MFChooseUnit": "MFChooseUnit",
  "SetTemperatureUnit" : "SetTemperatureUnit",

  // AccountLoginFlow
  "SignUp": "SignUp",
  "AccountLogin": "AccountLogin",
  "AccountVerifyCode": "AccountVerifyCode",
  "AccountChooseHome": "AccountChooseHome",
  // iOS will use modifiers
  // Android
  "AccountCreateHome": "PairV2:CreateHome:UserV2",
  "AccountSetHomePasscode": "SetHomePasscode:UserV2",
  "AccountSetupSuccess": "PairV2:SetupAccount:Success:UserV2",
  "AccountJoinHomeSuccess": "PairV2:SetupAccount:Success:UserV2",

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
  "SkipInstall": "SkipInstallation",
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
  "IGInstallComplete": "InstallationCompleteScreen",
  "IGSkipForNowFullScreenOverlay": "SkipForNow",
  "IGUnitInstallComplete": "MFUnitInstallComplete",
  "IGDeviceDiscovery": "InstallationGuide:IntegrationDiscovery",
  "IGConfirmIntegrations": "InstallationGuide:ConfirmIntegrations",
  "IGIntegrationSetupFinish": "InstallationGuide:IntegrationSetupFinish",
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
  "InstallComplete": "InstallationCompleteScreen",
  "GuideSkipForNow": "SkipForNow",
  "GuideCircuitLoadIdentification": "CircuitLoadIdentification",
  "GestureTutorialPage": "SwipeablePage:GestureTutorial", // iOS will use modifier
  "GuideUnitInstallComplete": "MFUnitInstallComplete",
  "GuideDeviceDiscovery": "InstallationGuide:IntegrationDiscovery",
  "GuideConfirmIntegrations": "InstallationGuide:ConfirmIntegrations",
  "GuideIntegrationSetupFinish": "InstallationGuide:IntegrationSetupFinish",

  // Control Configuration
  "ControlSelection": "ControlSelection" // iOS uses modifiers for selection type

  // Switch Provisioning
  "FreePairing": "BluetoothDevicesDetected",
  // iOS
  "SwitchProvisioning": "Provisioning", // Use modifier to specify device type
  "ControlProvisioning": "Provisioning", // Use modifier to specify device type
  "DeviceSetupMinDimLevel": "Provisioning:MinDimLevel",
  "DeviceSetupForwarding": "Provisioning:ForwardingAddress",
  "DeviceSetupOwner": "Provisioning:Owner",
  "IGWarning": "Provisioning:Warning", // Use modifier to specify warning type
  "ControlWarning": "Provisioning:Warning", // Use modifier to specify warning type
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
  "BRLDeviceVariationPicker": "BRLDeviceVariationPicker",
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
  "ThirdpartyAuthSuccess": "Thirdparty:AccountLinkingSuccess",
  "ThirdPartyPartialSuccess": "ThirdParty:PartialSuccess",
  "ThirdPartySettings": "ThirdParty:Settings",
  "ThirdPartyInstructions": "ThirdParty:Instructions",
  "NestStructures": "GoogleNestHomes",
  "WidgetControlSelection": "ArmStateWidgetVisibility",
  "WidgetPriority": "WidgetPriority",
  "WidgetConfigSuccess": "WidgetSummary",
  "ThirdPartyLinkLanding": "ThirdParty:LinkLanding",
  "VirtualAssistantManagement": "VirtualAssistantManagement",
  "AlexaSetup": "AlexaSetup",
  "AlexaDiscoverDevices": "AlexaDiscoverDevices",
  "AlexaDownloadApp": "AlexaDownloadApp",
  "AlexaSetupComplete": "AlexaSetupComplete",
  // Android (iOS will use screenModifier)
  "SkillTutorialPage": "SwipeablePage:SkillTutorial",
  "AlexaSetupSkipForNow": "SkipForNow:AlexaSetupFailure",
  "ThirdPartyDeveloperSettings": "ThirdParty:DevMenu",
  "ThirdPartyOwner": "ControlSelection:ThirdParty",
  "DoorbellPairDevices": "PairedDevice",
  "DoorbellNotifications": "DoorbellChimeConfiguration",
  "ChimeSetting": "ChimeSetting",

  // DeleteAccount
  "DeleteAccountExistingHomes": "ExistingHomes",
  "DeleteAccountConfirmation": "AccountDeletion",
  "DeleteAccountCode": "PairV2:Login:Verification:DeleteAccount", // Making Android match iOS, which reuses the enter code screen for delete account

  // UserV2Migration
  "MigrationPrompt": "MigrationPrompt",
  "MigrationConfirmEmail": "MigrationConfirmEmail",
  "MigrationEnterEmail": "MigrationEnterEmail",
  "MigrationEnterPassword": "MigrationEnterPassword",
  "MigrationVerifyCode": "MigrationVerifyCode",
  "MigrationInviteAction": "MigrationInviteAction",
  "MigrationSuccess": "MigrationSuccess",
}

const string MOBILE_DEMO_PAGE_NAME_ADD_PARTNER_DEVICES = "Add3PDevicesUpdate"
const string MOBILE_DEMO_PAGE_NAME_LIVE_VIEW = "LiveViewUpdate"
const string MOBILE_DEMO_PAGE_NAME_UPDATED_SETTINGS = "SettingsUpdate"
const string MOBILE_DEMO_PAGE_NAME_WHATS_NEW_SECTION = "WhatsNewUpdate"
const string MOBILE_PAGE_NAME_CELSIUS_SUPPORT = "CelsiusSupport"
const string MOBILE_PAGE_NAME_DEVICE_GROUPS = "DeviceGroups"
const string MOBILE_PAGE_NAME_FADE_IN_FADE_OUT = "FadeInFadeOut"
const string MOBILE_PAGE_NAME_GESTURE_DOUBLE_FLICK = "DoubleFlick"
const string MOBILE_PAGE_NAME_GESTURE_SINGLE_FINGER = "SingleFinger"
const string MOBILE_PAGE_NAME_GESTURE_SINGLE_FLICK = "SingleFlick"
const string MOBILE_PAGE_NAME_GESTURE_SLIDER = "Slider"
const string MOBILE_PAGE_NAME_GESTURE_SUPPORT = "GestureSupport"
const string MOBILE_PAGE_NAME_INVITE_HOME_MEMBERS = "InviteHomeMembers"
const string MOBILE_PAGE_NAME_SKILL_TUTORIAL = "SkillTutorial"
const string MOBILE_PAGE_NAME_SMARTTHINGS_ARLO = "SmartThingsArlo"

const string MOBILE_OVERLAY_NAME_ABOUT = "About"
const string MOBILE_OVERLAY_NAME_ADD = "AddOverlay"
const string MOBILE_OVERLAY_NAME_ADDITIONAL_ACCOUNTS = "AdditionalAccounts"
const string MOBILE_OVERLAY_NAME_ADJUST_LED = "AdjustLED"
const string MOBILE_OVERLAY_NAME_ADJUST_TEMPERATURE_RANGE = "AdjustTemperatureRange"
const string MOBILE_OVERLAY_NAME_ALEXA_ENABLED = "AlexaEnabled"
const string MOBILE_OVERLAY_NAME_APP_FEEDBACK_ENJOYING = "AppFeedback:Enjoying"
const string MOBILE_OVERLAY_NAME_APP_FEEDBACK_SURVEY = "AppFeedback:Survey"
const string MOBILE_OVERLAY_NAME_APP_FEEDBACK_THANKS = "AppFeedback:Thanks"
const string MOBILE_OVERLAY_NAME_ARM_STATE_ACTIVE = "ArmStateActive"
const string MOBILE_OVERLAY_NAME_ASSIGN_GROUP_TO_GESTURE_ERROR = "AssignGroupToGestureError"
const string MOBILE_OVERLAY_NAME_ASSIGN_SLIDER = "AssignSlider"
const string MOBILE_OVERLAY_NAME_ATTENTION_NEEDED = "AttentionNeeded"
const string MOBILE_OVERLAY_NAME_ATTENTION_NEEDED_MULTIPLE = "AttentionNeeded:Multiple"
const string MOBILE_OVERLAY_NAME_AUTHORIZATION_EXPIRED = "AuthorizationExpired"
const string MOBILE_OVERLAY_NAME_BLUETOOTH_GENERIC_ERROR = "BluetoothGenericErrorOverlay"
const string MOBILE_OVERLAY_NAME_BACK_ON_PROVISIONING = "Provisioning:ExitWarning"
const string MOBILE_OVERLAY_NAME_BIOMETRIC_ERROR = "BiometricError"
const string MOBILE_OVERLAY_NAME_BYPASS_SENSOR = "BypassSensor"
const string MOBILE_OVERLAY_NAME_CANCEL_INVITE = "CancelInvite"
const string MOBILE_OVERLAY_NAME_CANCEL_INVITE_SUCCESS = "CancelInvite:Success"
const string MOBILE_OVERLAY_NAME_CANNOT_DELETE_ROOM = "DeleteRoom:CannotDelete"
const string MOBILE_OVERLAY_NAME_CHANGE_MESH_OWNER = "ChangeMeshOwner"
const string MOBILE_OVERLAY_NAME_CIRCUIT_LOAD_IDENTIFICATION_ERROR = "CircuitLoadIdentification:WiringError"
const string MOBILE_OVERLAY_NAME_CIRCUIT_LOAD_IDENTIFICATION_HELP = "CircuitLoadIdentification:LoadSideDevice"
const string MOBILE_OVERLAY_NAME_CONNECTION_LOADING = "ConnectionLoading"
const string MOBILE_OVERLAY_NAME_CONNECTIVITY_ERROR = "ConnectivityError"
const string MOBILE_OVERLAY_NAME_CONTACT_SUPPORT_BUSINESS_HOURS = "ContactSupport:BusinessHours"
const string MOBILE_OVERLAY_NAME_CONTACT_SUPPORT_OUTSIDE_BUSINESS_HOURS = "ContactSupport:OutsideBusinessHours"
const string MOBILE_OVERLAY_NAME_CONTROL_CONFIGURATION_ERROR_GENERIC = "Configuration:Control:Error"
const string MOBILE_OVERLAY_NAME_CONTROL_CONFIGURATION_INCORRECT_DEVICE_TYPE = "Configuration:Control:IncorrectDeviceType"
const string MOBILE_OVERLAY_NAME_CONTROL_LOAD_CONFIG_ERROR = "ControlLoadConfig:Error"
const string MOBILE_OVERLAY_NAME_CONTROL_NEXT_STEPS = "ControlNextSteps"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVAL_ERROR = "ControlRemoval:Error"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVAL_UNSUPPORTED = "ControlRemoval:Unsupported"
const string MOBILE_OVERLAY_NAME_CONTROL_REMOVED = "ControlRemoved"
const string MOBILE_OVERLAY_NAME_CONTROL_SCAN_SWITCH_INSTALL = "ControlScanSwitchInstall"
const string MOBILE_OVERLAY_NAME_CURRENT_DEVICE_DEAUTHED = "CurrentDeviceDeauthed"
const string MOBILE_OVERLAY_NAME_CURRENT_DEVICE_DEAUTHED_MF_RESIDENT = "CurrentDeviceDeauthed:MFResident"
const string MOBILE_OVERLAY_NAME_CURRENT_DEVICE_DEAUTHED_USER_V2 = "CurrentDeviceDeauthed:UserV2"
const string MOBILE_OVERLAY_NAME_CURRENT_GANG_INFO = "CurrentGangInfo"
const string MOBILE_OVERLAY_NAME_CUSTOM_ART_PROMPT = "CustomArtPrompt"
const string MOBILE_OVERLAY_NAME_DEAUTHORIZED_DEVICE = "DeauthorizedDevice"
const string MOBILE_OVERLAY_NAME_DELETE_ACCOUNT_ERROR = "DeleteAccountError"
const string MOBILE_OVERLAY_NAME_DELETE_ACCOUNT_CONFIRMATION = "DeleteAccountConfirmation"
const string MOBILE_OVERLAY_NAME_DELETE_DEVICE_CONFIRMATION = "DeleteDeviceConfirmation"
const string MOBILE_OVERLAY_NAME_DELETE_GROUP = "DeleteGroup"
const string MOBILE_OVERLAY_NAME_DELETE_HOME_CONFIRMATION = "DeleteHomeConfirmation"
const string MOBILE_OVERLAY_NAME_DELETE_HOME_SUCCESS = "DeleteHomeSuccess"
const string MOBILE_OVERLAY_NAME_DELETE_HOME_ERROR = "DeleteHomeError"
const string MOBILE_OVERLAY_NAME_DELETE_INSTALLATION = "DeleteInstallation"
const string MOBILE_OVERLAY_NAME_DELETE_INSTALLATION_ERROR = "DeleteInstallation:Error"
const string MOBILE_OVERLAY_NAME_DELETE_ROOM = "DeleteRoom"
const string MOBILE_OVERLAY_NAME_DELETE_ROOM_ERROR = "DeleteRoom:Error"
const string MOBILE_OVERLAY_NAME_DETECTING_DEVICES = "DetectingDevices"
const string MOBILE_OVERLAY_NAME_DETECTING_DEVICES_ERROR = "DetectingDevices:Error"
const string MOBILE_OVERLAY_NAME_DEVICE_ADDED = "ThirdParty:DeviceAdded"
const string MOBILE_OVERLAY_NAME_DEVICE_OFFLINE = "ThirdParty:DeviceOffline"
const string MOBILE_OVERLAY_NAME_DEVICE_OFFLINE_NON_RESETTABLE = "ThirdParty:DeviceOffline:NonResettable"
const string MOBILE_OVERLAY_NAME_DEVICE_NOT_FOUND = "DeviceSettings:DeviceNotFound"
const string MOBILE_OVERLAY_NAME_DEVICE_SETTINGS_ERROR = "DeviceSettings:Error"
const string MOBILE_OVERLAY_NAME_DEVICES_DEMO_INFO = "Demo:Devices"
const string MOBILE_OVERLAY_NAME_DISCONNECTED = "Disconnected"
const string MOBILE_OVERLAY_NAME_DISCONNECTED_PARTIAL = "Disconnected:Partial"
const string MOBILE_OVERLAY_NAME_EDIT_DEVICE_NAME = "EditDeviceName"
const string MOBILE_OVERLAY_NAME_EDIT_HOME_NAME = "EditHomeName"
const string MOBILE_OVERLAY_NAME_EDIT_PROFILE_NAME = "EditProfileName"
const string MOBILE_OVERLAY_NAME_EDIT_ROOMS = "EditRooms"
const string MOBILE_OVERLAY_NAME_EMPTY_ROOM = "Rooms:Empty"
const string MOBILE_OVERLAY_NAME_ENABLE_3P_DEVICES = "Enable3PDevices"
const string MOBILE_OVERLAY_NAME_ENABLE_ALEXA = "EnableAlexa"
const string MOBILE_OVERLAY_NAME_ENABLE_LIVE_VIEW = "EnableLiveView"
const string MOBILE_OVERLAY_NAME_ENTER_ZIP_CODE = "EnterZipCode"
const string MOBILE_OVERLAY_NAME_EXISTING_MEMBERS = "ExistingMembers"
const string MOBILE_OVERLAY_NAME_EXIT_DEMO = "Demo:Exit"
const string MOBILE_OVERLAY_NAME_FAILED_COMPATIBILITY = "FailedCompatibility"
const string MOBILE_OVERLAY_NAME_FREE_PAIRING_NO_DEVICES = "FreePairing:NoDevices"
const string MOBILE_OVERLAY_NAME_FREE_PAIRING_READY_TO_CONNECT = "FreePairing:ReadyToConnect"
const string MOBILE_OVERLAY_NAME_FORCE_UPGRADE = "ForceUpgrade"
const string MOBILE_OVERLAY_NAME_FOREIGN_QR_SCAN = "ForeignQRScan"
const string MOBILE_OVERLAY_NAME_FORGET_HOME = "ForgetHome"
const string MOBILE_OVERLAY_NAME_FOURWAY_INSTALL_WARNING = "FourwayInstallWarning"
const string MOBILE_OVERLAY_NAME_GENERIC_ERROR = "GenericError"
const string MOBILE_OVERLAY_NAME_GET_HOMES_ERROR = "GetHomesError"
const string MOBILE_OVERLAY_NAME_GRANT_PHOTO_PERMISSIONS = "Photos:Upload:GrantPermission"
const string MOBILE_OVERLAY_NAME_HIGH_HUMIDITY = "AttentionNeeded:HighHumidity"
const string MOBILE_OVERLAY_NAME_HIGH_TEMPERATURE = "AttentionNeeded:HighTemperature"
const string MOBILE_OVERLAY_NAME_HIGH_WATTAGE = "HighWattage"
const string MOBILE_OVERLAY_NAME_HIGH_WATTAGE_LOAD = "HighWattageLoad"
const string MOBILE_OVERLAY_NAME_HOME_INVITE_ACCEPT_CONFIRMATION = "HomeInviteAcceptConfirmation"
const string MOBILE_OVERLAY_NAME_HOME_INVITE_DECLINE_CONFIRMATION = "HomeInviteDeclineConfirmation"
const string MOBILE_OVERLAY_NAME_HOME_JOINED = "HomeJoined"
const string MOBILE_OVERLAY_NAME_HOME_MANAGEMENT_UPDATE_NAME_ERROR = "HomeManagement:UpdateName:Error"
const string MOBILE_OVERLAY_NAME_HONEYWELL_SETUP_ERROR = "HoneywellSetupError"
const string MOBILE_OVERLAY_NAME_INSTALL_COMPLETED = "Success:InstallCompleted"
const string MOBILE_OVERLAY_NAME_INSTALL_COMPLETION_FAILED = "InstallCompletion:Failed"
const string MOBILE_OVERLAY_NAME_INSTALL_COMPLETION_PROMPT = "InstallCompletion:Prompt"
const string MOBILE_OVERLAY_NAME_INSTALL_MISSING_INFO_BLOCK = "InstallSetup:MissingInfo:BlockUntilComplete"
const string MOBILE_OVERLAY_NAME_INSTALL_MISSING_INFO_PROMPT = "InstallSetup:MissingInfo:PromptToEdit"
const string MOBILE_OVERLAY_NAME_INSTALL_PENDING = "Success:InstallPending"
const string MOBILE_OVERLAY_NAME_INSTALL_TEMPLATE_REFRESH_WARNING = "InstallTemplate:Refresh:Warning"
const string MOBILE_OVERLAY_NAME_INSTALL_UNSUPPORTED_BRILLIANT_SWITCH_CIRCUIT = "InstallUnsupported:BrilliantSwitchCircuit"
const string MOBILE_OVERLAY_NAME_INSTALL_UNSUPPORTED_MAGNETIC = "InstallUnsupported:Magnetic"
const string MOBILE_OVERLAY_NAME_INSTALL_UNSUPPORTED_REGULAR_DIMMER = "InstallUnsupported:RegularDimmmer"
const string MOBILE_OVERLAY_NAME_INSTALL_UNSUPPORTED_WATTAGE = "InstallUnsupported:Wattage"
const string MOBILE_OVERLAY_NAME_INSTALLATION_DELETE_EDIT = "InstallationDeleteEdit"
const string MOBILE_OVERLAY_NAME_INSTALLATION_FEEDBACK = "InstallationFeedback"
const string MOBILE_OVERLAY_NAME_INSTALLATION_RATING = "InstallationRating"
const string MOBILE_OVERLAY_NAME_INVALID_TOKEN = "InvalidToken"
const string MOBILE_OVERLAY_NAME_INVITE_ERROR_INVALID_EMAIL = "InviteError:InvalidEmail"
const string MOBILE_OVERLAY_NAME_INVITE_ERROR_LIMIT = "InviteError:Limit"
const string MOBILE_OVERLAY_NAME_INVITE_RESIDENT = "InviteResident"
const string MOBILE_OVERLAY_NAME_IS_THIS_LIGHT = "ThirdParty:IsThisLight"
const string MOBILE_OVERLAY_NAME_JOIN_ANOTHER_HOME = "JoinAnotherHome"
const string MOBILE_OVERLAY_NAME_LEAK_DETECTED = "AttentionNeeded:LeakDetected"
const string MOBILE_OVERLAY_NAME_LED_SUCCESS = "LEDSuccess"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_BUSY = "LiveView:Disabled:Busy"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_OPERATOR = "LiveView:Disabled:Operator"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_PHONE_UNSUPPORTED = "LiveView:Disabled:PhoneUnsupported"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_PRIVACY = "LiveView:Disabled:Privacy"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_SOFTWARE_VERSION = "LiveView:Disabled:SoftwareVersion"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_DISABLED_UNSUPPORTED = "LiveView:Disabled:Unsupported"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_ENABLED = "LiveViewEnabled"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_PLAYING_TIMEOUT = "LiveViewPlayingTimeout"
const string MOBILE_OVERLAY_NAME_LIVE_VIEW_SURVEY = "LiveViewSurvey"
const string MOBILE_OVERLAY_NAME_LOAD_PHOTOS_ERROR = "LoadPhotosError"
const string MOBILE_OVERLAY_NAME_LOCK_STATE_JAMMED = "Jammed"
const string MOBILE_OVERLAY_NAME_LOCK_STATE_UNKNOWN = "Unknown"
const string MOBILE_OVERLAY_NAME_LOG_OUT_AMAZON = "LogOutAmazon"
const string MOBILE_OVERLAY_NAME_LOGGED_OUT_FROM_INACTIVITY = "LoggedOutFromInactivity"
const string MOBILE_OVERLAY_NAME_LOW_TEMPERATURE = "AttentionNeeded:LowTemperature"
const string MOBILE_OVERLAY_NAME_MESH_CRITICAL_FIRMWARE_UPDATE = "MeshFirmwareUpdate:Critical"
const string MOBILE_OVERLAY_NAME_MESH_FIRMWARE_UPDATE = "MeshFirmwareUpdate"
const string MOBILE_OVERLAY_NAME_MF_CURRENT_UNIT_OCCUPIED = "MFUnitOccupied:CurrentUnit"
const string MOBILE_OVERLAY_NAME_MF_HOME_ACCESS_DISABLED = "MFHomeAccessDisabled"
const string MOBILE_OVERLAY_NAME_MF_HOMES_LISTING = "MFHomesListing"
const string MOBILE_OVERLAY_NAME_MF_INSTALLATION_EDIT_DEVICE_NUMBER = "MFInstallationEditDeviceNumber"
const string MOBILE_OVERLAY_NAME_MF_INTEGRATIONS_MISSING_DEVICES = "MFIntegrations:MissingDevices"
const string MOBILE_OVERLAY_NAME_MF_INTEGRATIONS_OFFLINE_DEVICES = "MFIntegrations:OfflineDevices"
const string MOBILE_OVERLAY_NAME_MF_INTEGRATIONS_UNEXPECTED_DEVICES = "MFIntegrations:UnexpectedDevices"
const string MOBILE_OVERLAY_NAME_MF_RESET_PIN = "MFResetPin"
const string MOBILE_OVERLAY_NAME_MF_UNIT_OCCUPIED = "MFUnitOccupied"
const string MOBILE_OVERLAY_NAME_MIGRATION_ERROR = "MigrationError"
const string MOBILE_OVERLAY_NAME_MIGRATION_INVITE_NOT_SENT = "MigrationInviteNotSent"
const string MOBILE_OVERLAY_NAME_MIGRATION_INVITE_PENDING = "MigrationInvitePending"
const string MOBILE_OVERLAY_NAME_MIGRATION_REQUEST_ANOTHER_INVITE = "MigrationRequestAnotherInvite"
const string MOBILE_OVERLAY_NAME_MIGRATION_REQUEST_INVITE_TO_V1_HOME = "MigrationRequestInviteToV1Home"
const string MOBILE_OVERLAY_NAME_MISSING_CERTIFICATE = "MissingCertificate"
const string MOBILE_OVERLAY_NAME_MOBILE_REMOVED = "MobileRemoved"
const string MOBILE_OVERLAY_NAME_MOBILE_REMOVAL_ERROR = "MobileRemoval:Error"
const string MOBILE_OVERLAY_NAME_MULTIWAY_DEVICE = "MultiwayDevice"
const string MOBILE_OVERLAY_NAME_NO_DEVICES_FOUND = "ThirdParty:DevicesFound"
const string MOBILE_OVERLAY_NAME_NO_GESTURE_ONE_COMPATIBLE_DEVICE_FOUND = "NoGestureCompatibleDevices:Single"
const string MOBILE_OVERLAY_NAME_NO_GESTURE_TWO_COMPATIBLE_DEVICE_FOUND = "NoGestureCompatibleDevices:Double"
const string MOBILE_OVERLAY_NAME_NO_ONLINE_CONTROL = "NoOnlineControl"
const string MOBILE_OVERLAY_NAME_NO_QR_CODE = "Provisioning:NoQRCode"
const string MOBILE_OVERLAY_NAME_NOT_NOW = "NotNow"
const string MOBILE_OVERLAY_NAME_OFFLINE_DEVICE = "OfflineDevice"
const string MOBILE_OVERLAY_NAME_OPEN_SONOS = "OpenSonos"
const string MOBILE_OVERLAY_NAME_OTHER_RECOMMENDATIONS = "OtherRecommendations"
const string MOBILE_OVERLAY_NAME_OVERRIDE_DISPLAY_SETTINGS = "OverrideDisplaySettings"
const string MOBILE_OVERLAY_NAME_PAIRED_DEVICE_DEAUTHORIZED = "PairedDevice:Deauthorized"
const string MOBILE_OVERLAY_NAME_PAIRED_DEVICE_OFFLINE = "PairedDevice:Offline"
const string MOBILE_OVERLAY_NAME_PASSCODE_RESET_FAILED = "PasscodeResetFailed"
const string MOBILE_OVERLAY_NAME_PENDING_HOME_INVITE_MULTIFAMILY = "PendingHomeInvite:Multifamily"
const string MOBILE_OVERLAY_NAME_PHOTOS_DEMO_INFO = "Demo:Photos"
const string MOBILE_OVERLAY_NAME_PIN_UPDATED = "PinUpdated"
const string MOBILE_OVERLAY_NAME_PRIVACY_SETTINGS_ERROR = "PrivacySettings:Error"
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
const string MOBILE_OVERLAY_NAME_REASSIGN_SLIDERS = "ReassignSliders"
const string MOBILE_OVERLAY_NAME_REMOVE_LAST_USER = "RemoveLastUser:Forbidden"
const string MOBILE_OVERLAY_NAME_REMOVE_SUCCESS_SELF = "RemoveSuccess:Self"
const string MOBILE_OVERLAY_NAME_REMOVE_SUCCESS_USER = "RemoveSuccess:UserV2"
const string MOBILE_OVERLAY_NAME_RENAME_ROOM_ERROR = "RenameRoom:Error"
const string MOBILE_OVERLAY_NAME_REPROVISION_MESH_DEVICE_WARNING = "ReprovisionMeshDeviceWarning"
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
const string MOBILE_OVERLAY_NAME_SCENES_DEMO_INFO = "Demo:Scenes"
const string MOBILE_OVERLAY_NAME_SCENE_ACTION_DELETE = "SceneAction:Delete"
const string MOBILE_OVERLAY_NAME_SCENE_ACTION_MERGED = "SceneAction:Merged"
const string MOBILE_OVERLAY_NAME_SCENE_DELETE = "Scene:Delete"
const string MOBILE_OVERLAY_NAME_SCENE_EXECUTED = "SceneExecuted"
const string MOBILE_OVERLAY_NAME_SCENE_EXECUTED_FULLY_INVALID = "SceneExecuted:FullyInvalid"
const string MOBILE_OVERLAY_NAME_SCENE_EXECUTED_PARTIALLY_INVALID = "SceneExecuted:PartiallyInvalid"
const string MOBILE_OVERLAY_NAME_SCENE_EXECUTION_ERROR_NO_OPEN_CONNECTION = "SceneExecutionError:NoOpenConnection"
const string MOBILE_OVERLAY_NAME_SCENE_EXECUTION_ERROR_REQUEST_FAILED = "SceneExecutionError:RequestFailed"
const string MOBILE_OVERLAY_NAME_SCENE_EXECUTION_ERROR_UNKNOWN = "SceneExecutionError:Unknown"
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
const string MOBILE_OVERLAY_NAME_SECURITY_INTRUSION_ALARM = "IntrusionAlarm"
const string MOBILE_OVERLAY_NAME_SECURITY_MEDICAL_ALARM = "MedicalAlarm"
const string MOBILE_OVERLAY_NAME_SECURITY_POLICE_ALARM = "PoliceAlarm"
const string MOBILE_OVERLAY_NAME_SECURITY_REQUEST_FAILURE = "SecurityRequestFailure"
const string MOBILE_OVERLAY_NAME_SECURITY_SENSOR_STATUS = "SecuritySensorStatus"
const string MOBILE_OVERLAY_NAME_SECURITY_SENSORS_UNAVAILABLE = "SecuritySensorsUnavailable"
const string MOBILE_OVERLAY_NAME_SECURITY_SENSORS_UNAVAILABLE_BYPASS = "SecuritySensorsUnavailableBypass"
const string MOBILE_OVERLAY_NAME_SELECT_TIME_ZONE = "SelectTimeZone"
const string MOBILE_OVERLAY_NAME_SET_LED_BRIGHTNESS = "SetLEDBrightness"
const string MOBILE_OVERLAY_NAME_SET_MOTION_RULES = "SetMotionRules"
const string MOBILE_OVERLAY_NAME_SETUP_FINISHED = "SetupFinished"
const string MOBILE_OVERLAY_NAME_SETUP_VIRTUAL_ASSISTANTS = "SetupVirtualAssistants"
const string MOBILE_OVERLAY_NAME_SKIP_WARNING = "SkipWarning"
const string MOBILE_OVERLAY_NAME_SWITCH_HOME_ERROR = "SwitchHomeError"
const string MOBILE_OVERLAY_NAME_SWITCH_MOTION_SETTINGS_DCDC_PROMPT = "SwitchMotionSettingsDCDCPrompt"
const string MOBILE_OVERLAY_NAME_SWITCH_MOTION_SETTINGS_DCDC_SUCCESS = "SwitchMotionSettingsDCDCSuccess"
const string MOBILE_OVERLAY_NAME_SWITCH_NEXT_STEPS = "SwitchNextSteps"
const string MOBILE_OVERLAY_NAME_SWITCH_RESET = "SwitchReset"
const string MOBILE_OVERLAY_NAME_SWITCH_SCAN_CONTROL_INSTALL = "SwitchScanControlInstall"
const string MOBILE_OVERLAY_NAME_TEMPERATURE_UNIT_ERROR = "TemperatureUnitError"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_DEVICE_REQUEST = "ThirdParty:Request"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_ERROR = "ThirdParty:Error"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_NOT_AUTHORIZED = "ThirdParty:NotAuthorized"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_RESET_INTEGRATION = "ThirdParty:ResetIntegration"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_RESET_INTEGRATION_FAILURE = "ThirdParty:ResetIntegration:Failure"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_RESET_INTEGRATION_SUCCESS = "ThirdParty:ResetIntegration:Success"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_SECONDARY_USER = "ThirdParty:SecondaryUser"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_SECURITY_UNSUPPORTED = "ThirdParty:SecurityUnsupported"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_URL_ERROR = "ThirdParty:UrlError"
const string MOBILE_OVERLAY_NAME_THIRD_PARTY_WORKS_WITH_OPTIONS = "ThirdParty:WorksWithOptions"
const string MOBILE_OVERLAY_NAME_TIMEOUT_SELECTION = "TimeoutSelection"
const string MOBILE_OVERLAY_NAME_TOGGLE_AIRPLANE = "ToggleAirplaneMode"
const string MOBILE_OVERLAY_NAME_UNASSIGNED_DEVICES = "UnassignedDevices"
const string MOBILE_OVERLAY_NAME_UNCONFIGURED_DEVICE = "UnconfiguredDevice"
const string MOBILE_OVERLAY_NAME_UNSUPPORTED_DEVICE_IN_DEVICE_SETTINGS = "DeviceSettings:UnsupportedDevice"
const string MOBILE_OVERLAY_NAME_UNSUPPORTED_DEVICE_IN_GROUP_DELETE_GROUP = "UnsupportedDeviceInGroupDeleteGroup"
const string MOBILE_OVERLAY_NAME_UNSUPPORTED_DEVICE_IN_GROUP_EDIT = "UnsupportedDeviceInGroupEdit"
const string MOBILE_OVERLAY_NAME_UNSUPPORTED_DEVICE_IN_GROUP_REMOVE = "UnsupportedDeviceInGroupRemove"
const string MOBILE_OVERLAY_NAME_UPDATING_MESH_NETWORK = "UpdatingMeshNetwork"
const string MOBILE_OVERLAY_NAME_VIEW_HOMES = "ViewHomes"
const string MOBILE_OVERLAY_NAME_WATER_SHUTOFF_VALVE_CLOSE_CONFIRMATION = "WaterShutoffValve:CloseConfirmation"
const string MOBILE_OVERLAY_NAME_WATER_SHUTOFF_VALVE_DETECTION_ERROR = "WaterShutoffValve:DetectionError"
const string MOBILE_OVERLAY_NAME_WATER_SHUTOFF_VALVE_LEAK_PROTECTED = "WaterShutoffValve:LeakProtected"
const string MOBILE_OVERLAY_NAME_WATER_SHUTOFF_VALVE_LEAK_PROTECTION_FAILED = "WaterShutoffValve:LeakProtectionFailed"
const string MOBILE_OVERLAY_NAME_WATER_SHUTOFF_VALVE_UNKNOWN_ERROR = "WaterShutoffValve:UnknownError"
const string MOBILE_OVERLAY_NAME_WATER_SHUTOFF_VALVE_VALVE_ERROR = "WaterShutoffValve:ValveError"
const string MOBILE_OVERLAY_NAME_WHATS_NEW = "WhatsNew"
const string MOBILE_OVERLAY_NAME_WRONG_GANG_CONTROL_INSTALL = "WrongGangControlInstall"

