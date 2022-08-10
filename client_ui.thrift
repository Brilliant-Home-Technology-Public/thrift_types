namespace py thrift_types.client_ui
namespace java thrift_types.client_ui

include "message_bus.thrift"
include "configuration.thrift"

const string AUGUST_INTEGRATION_NAME = "August"
const string BUTTERFLYMX_INTEGRATION_NAME = "ButterflyMX"
const string ECOBEE_INTEGRATION_NAME = "Ecobee"
const string GENIE_INTEGRATION_NAME = "Genie"
const string HONEYWELL_INTEGRATION_NAME = "Honeywell Home"
const string HONEYWELL_TC2_INTEGRATION_NAME = "Total Connect 2.0"
const string HUE_INTEGRATION_NAME = "Hue"
const string HUNTER_DOUGLAS_INTEGRATION_NAME = "Hunter Douglas"
const string LIFX_INTEGRATION_NAME = "LIFX"
const string NEST_INTEGRATION_NAME = "Google Nest"
const string REMOTELOCK_INTEGRATION_NAME = "RemoteLock"
const string RING_INTEGRATION_NAME = "Ring"
const string SALTO_KS_INTEGRATION_NAME = "Salto KS"
const string SCHLAGE_INTEGRATION_NAME = "Schlage Encode"
const string SMARTTHINGS_INTEGRATION_NAME = "SmartThings"
const string SOMFY_INTEGRATION_NAME = "Somfy"
const string SONOS_INTEGRATION_NAME = "Sonos"
const string SPECTRUM_BRANDS_INTEGRATION_NAME = "Kwikset"
const string TPLINK_INTEGRATION_NAME = "TP-Link Kasa"
const string WEMO_INTEGRATION_NAME = "Wemo"

const map<string, string> THIRDPARTY_VIRTUAL_DEVICE_IDENTIFIER_TO_INTEGRATION_NAME = {
		message_bus.AUGUST_IDENTIFIER: AUGUST_INTEGRATION_NAME,
		message_bus.BUTTERFLYMX_IDENTIFIER: BUTTERFLYMX_INTEGRATION_NAME,
		message_bus.ECOBEE_IDENTIFIER: ECOBEE_INTEGRATION_NAME,
		message_bus.GENIE_IDENTIFIER: GENIE_INTEGRATION_NAME,
		message_bus.HONEYWELL_IDENTIFIER: HONEYWELL_INTEGRATION_NAME,
		message_bus.HONEYWELL_TC2_IDENTIFIER: HONEYWELL_TC2_INTEGRATION_NAME,
		message_bus.HUE_BRIDGE_IDENTIFIER: HUE_INTEGRATION_NAME,
		message_bus.HUNTER_DOUGLAS_IDENTIFIER: HUNTER_DOUGLAS_INTEGRATION_NAME,
		message_bus.LIFX_IDENTIFIER: LIFX_INTEGRATION_NAME,
		message_bus.NEST_IDENTIFIER: NEST_INTEGRATION_NAME,
		message_bus.REMOTELOCK_IDENTIFIER: REMOTELOCK_INTEGRATION_NAME,
		message_bus.RING_VIRTUAL_DEVICE: RING_INTEGRATION_NAME,
		message_bus.SALTO_KS_IDENTIFIER: SALTO_KS_INTEGRATION_NAME,
		message_bus.SCHLAGE_IDENTIFIER: SCHLAGE_INTEGRATION_NAME,
		message_bus.SMARTTHINGS_IDENTIFIER: SMARTTHINGS_INTEGRATION_NAME,
		message_bus.SOMFY_IDENTIFIER: SOMFY_INTEGRATION_NAME,
		message_bus.SONOS_IDENTIFIER: SONOS_INTEGRATION_NAME,
		message_bus.SPECTRUM_BRANDS_IDENTIFIER: SPECTRUM_BRANDS_INTEGRATION_NAME,
		message_bus.TPLINK_IDENTIFIER: TPLINK_INTEGRATION_NAME,
		message_bus.WEMO_IDENTIFIER: WEMO_INTEGRATION_NAME,
}

enum SupportType {
  DEVICES = 0,
  SCENES = 1,
  GESTURES = 2,
  CAP_TOUCH = 3,
  MOTION = 4,
  // TODO: Add Alexa
}

const map<message_bus.PeripheralType, map<SupportType, bool>> CONTROL_PERIPHERAL_SUPPORT_DETAILS = {
  message_bus.PeripheralType.LIGHT: {
        SupportType.DEVICES: true,
        SupportType.SCENES: true,
        SupportType.GESTURES: true,
        SupportType.CAP_TOUCH: true,
        SupportType.MOTION: true
    },
    message_bus.PeripheralType.MUSIC: {
        SupportType.DEVICES: true,
        SupportType.SCENES: true,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: true,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.SPEAKER: {
        SupportType.DEVICES: true,
        SupportType.SCENES: false,
        SupportType.GESTURES: false,
        // TODO: Cap Touch for speakers will only be enabled if customer complaints/requests are received
        // See: https://brillianthome.atlassian.net/browse/CQ-3846
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.LOCK: {
        SupportType.DEVICES: true,
        SupportType.SCENES: true,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.DOORBELL: {
        SupportType.DEVICES: true,
        SupportType.SCENES: false,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.CAMERA: {
        SupportType.DEVICES: true,
        SupportType.SCENES: false,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.THERMOSTAT: {
        SupportType.DEVICES: true,
        SupportType.SCENES: true,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.OUTLET: {
        SupportType.DEVICES: true,
        SupportType.SCENES: true,
        SupportType.GESTURES: true,
        SupportType.CAP_TOUCH: true,
        SupportType.MOTION: true
    },
    message_bus.PeripheralType.ART_CONFIGURATION: {
        SupportType.DEVICES: false,
        SupportType.SCENES: true,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.GENERIC_ON_OFF: {
        SupportType.DEVICES: true,
        SupportType.SCENES: true,
        SupportType.GESTURES: true,
        SupportType.CAP_TOUCH: true,
        SupportType.MOTION: true
    },
    message_bus.PeripheralType.ALWAYS_ON: {
        SupportType.DEVICES: true,
        SupportType.SCENES: false,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.DEVICE_CONFIGURATION: {
        SupportType.DEVICES: true,
        SupportType.SCENES: false,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.SHADE: {
        SupportType.DEVICES: true,
        SupportType.SCENES: true,
        SupportType.GESTURES: true,
        SupportType.CAP_TOUCH: true,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.NEST_STRUCTURE: {
        SupportType.DEVICES: false,
        SupportType.SCENES: false,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.BUILDING_ENTRY_PANEL: {
        SupportType.DEVICES: true,
        SupportType.SCENES: true,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.SWITCH_CONFIGURATION: {
        SupportType.DEVICES: true,
        SupportType.SCENES: false,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.BRILLIANT_PLUG: {
        SupportType.DEVICES: false,
        SupportType.SCENES: false,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.GARAGE_DOOR: {
        SupportType.DEVICES: true,
        SupportType.SCENES: true,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.CLIMATE_SENSOR: {
        SupportType.DEVICES: true,
        SupportType.SCENES: false,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.SALTO_KS_IQ: {
        SupportType.DEVICES: false,
        SupportType.SCENES: false,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
    message_bus.PeripheralType.WEATHER: {
        SupportType.DEVICES: false,
        SupportType.SCENES: false,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    }
    message_bus.PeripheralType.SECURITY_SYSTEM: {
        SupportType.DEVICES: true,
        SupportType.SCENES: true,
        SupportType.GESTURES: false,
        SupportType.CAP_TOUCH: false,
        SupportType.MOTION: false
    },
}

enum ControlLockScreenWidgetType {
  MUSIC = 1,
  SECURITY_SYSTEM_ARM_STAY = 2,
}

struct ControlLockScreenWidgetConfiguration {
  1: list<ControlLockScreenWidgetType> widget_priority
}

const list<configuration.SetVariablesAction> SCENE_ACTIONS_INCOMPATIBLE_WITH_ALEXA = [
    {
        "variables": {}, // any variable, any value
        "peripheral_filter": {
            "peripheral_types": [
                message_bus.PeripheralType.BUILDING_ENTRY_PANEL,
                message_bus.PeripheralType.LOCK,
                message_bus.PeripheralType.CAMERA,
                message_bus.PeripheralType.GARAGE_DOOR,
                message_bus.PeripheralType.SECURITY_SYSTEM,
            ],
        },
    },
]

const list<configuration.SetVariablesAction> SCENE_ACTIONS_REQUIRING_PASSCODE = [
    {
        "variables": {}, // any variable, any value
        "peripheral_filter": {
            "peripheral_types": [
                message_bus.PeripheralType.SECURITY_SYSTEM,
            ],
        },
    },
]

const list<string> PROPERTY_MANAGED_DEVICES = [
    message_bus.REMOTELOCK_IDENTIFIER,
]

const configuration.PeripheralFilter ON_OFF_TOGGLE_PERIPHERAL_FILTER = {
  "peripheral_types": [
      message_bus.PeripheralType.OUTLET,
      message_bus.PeripheralType.LIGHT,
      message_bus.PeripheralType.GENERIC_ON_OFF
  ],
  "excluded_variable_states": {"low_wattage": "1"},
}
