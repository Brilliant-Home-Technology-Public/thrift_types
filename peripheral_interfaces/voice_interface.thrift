namespace py thrift_types.peripheral_interfaces.voice_interface
namespace java thrift_types.peripheral_interfaces.voice_interface

include "../message_bus.thrift"
include "../voice.thrift"
include "peripheral_interface.thrift"

struct VoicePeripheralInterface {
  1: bool on
  2: string access_token
  3: i32 access_token_expiration_date
  4: string refresh_token
  5: voice.AlexaStatus state
  6: bool show_mute_button
  7: bool wakeword_chime
  8: bool muted
  9: i32 wakeword_sensitivity_adjustment
  10: bool record_voice_requests
  11: bool record_voice_responses
  12: bool playback_cancel_requested
  13: voice.AlexaRenderTemplateData last_received_render_template
  14: i32 notification_count
  15: bool use_audio_dsp
  16: i32 beamsteering
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'VoicePeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.VOICE,
}

