namespace py thrift_types.nest
namespace java thrift_types.nest

include "configuration.thrift"

const string NEST_API_BASE = "https://developer-api.nest.com"
// Required min difference between heat and cool temps in heat-cool mode
const i32 HEAT_COOL_MIN_DELTA = 3
const string NEST_DEMO_ACCESS_TOKEN = "NEST_DEMO_ACCESS_TOKEN"
const i32 GOOGLE_NEST_SUPPORT_MIN_API_VERSION = 2
const i32 GOOGLE_NEST_CAM_DOORBELL_MIN_API_VERSION = 3

// Google API Device Trait Keys
const string NEST_INFO_TRAIT = "sdm.devices.traits.Info"
const string NEST_FAN_TRAIT = "sdm.devices.traits.Fan"
const string NEST_SETTINGS_TRAIT = "sdm.devices.traits.Settings"
const string NEST_TEMPERATURE_TRAIT = "sdm.devices.traits.Temperature"
const string NEST_CONNECTIVITY_TRAIT = "sdm.devices.traits.Connectivity"

// Google API Thermostat Trait Keys
const string NEST_ECO_TRAIT = "sdm.devices.traits.ThermostatEco"
const string NEST_MODE_TRAIT = "sdm.devices.traits.ThermostatMode"
const string NEST_SETPOINT_TRAIT = "sdm.devices.traits.ThermostatTemperatureSetpoint"

// Google API Camera Trait Keys
const string NEST_CAMERA_LIVE_STREAM_TRAIT = "sdm.devices.traits.CameraLiveStream"

// Google API Doorbell Trait Keys
const string NEST_DOORBELL_CHIME_TRAIT = "sdm.devices.traits.DoorbellChime"

// Google API Struture Trait Keys
const string NEST_STRUCTURE_INFO_TRAIT = "sdm.structures.traits.Info"

// Google API Event Keys
const string NEST_DOORBELL_CHIME_EVENT = "sdm.devices.events.DoorbellChime.Chime"

// Google API Commands
const string NEST_SET_ECO_MODE = "sdm.devices.commands.ThermostatEco.SetMode"
const string NEST_SET_HVAC_MODE = "sdm.devices.commands.ThermostatMode.SetMode"
const string NEST_SET_HEAT_TEMP = "sdm.devices.commands.ThermostatTemperatureSetpoint.SetHeat"
const string NEST_SET_COOL_TEMP = "sdm.devices.commands.ThermostatTemperatureSetpoint.SetCool"
const string NEST_SET_TEMP_RANGE = "sdm.devices.commands.ThermostatTemperatureSetpoint.SetRange"
const string NEST_SET_FAN = "sdm.devices.commands.Fan.SetTimer"
const string NEST_GENERATE_RTSP_STREAM = "sdm.devices.commands.CameraLiveStream.GenerateRtspStream"
const string NEST_STOP_RTSP_STREAM = "sdm.devices.commands.CameraLiveStream.StopRtspStream"
const string NEST_GENERATE_WEBRTC_STREAM = "sdm.devices.commands.CameraLiveStream.GenerateWebRtcStream"
const string NEST_STOP_WEBRTC_STREAM = "sdm.devices.commands.CameraLiveStream.StopWebRtcStream"
const string NEST_GENERATE_PREVIEW_IMAGE = "sdm.devices.commands.CameraEventImage.GenerateImage"

struct ThermostatIds {
	1: list<string> thermostat_ids
}

struct NestStructurePeripherals {
  1: optional list<configuration.UniquePeripheralID> peripheral_ids
}
