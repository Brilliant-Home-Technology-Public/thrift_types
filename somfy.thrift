namespace py thrift_types.somfy
namespace java thrift_types.somfy

include "configuration.thrift"

const string SOMFY_TEMPORARY_AUTH_TOKEN = "TemporarySynergyAuth"

const string SOMFY_MOVEMENT_NOTIFICATION_METHOD = "status.movement"
const string SOMFY_ONOFF_NOTIFICATION_METHOD = "status.onoff"
const string SOMFY_POSITION_NOTIFICATION_METHOD = "status.position"

const string SOMFY_ZIGBEE_PLUG_CONTROLLABLE_NAME = "zigbee:OnOffComponent"
const list<string> SOMFY_TILT_CAPABLE_KINDS = [
    "UpDownExteriorVenetianBlind",
    "UpDownVenetianBlind",
    "UpDownZebraScreen",
    "UpDownSheerScreen",
    "TiltOnlyVenetianBlind",
    "PositionableScreen",
    "PositionableVenetianBlind",
    "UpDownBioclimaticPergola",
]

// TODO (Aman): Remove SomfyAPIType
enum SomfyAPIType {
  UNKNOWN = 0, // deprecated
  MYLINK = 1, // deprecated
  RTS = 2, // deprecated
  SDN = 3, // deprecated
  SDN_PLUS = 4, // to be deprecated (temporarily required for Channel Demo Kit)
}

struct SomfyTarget {
  1: string display_name
  2: bool group
}

struct SomfyCredential {
  1: string ip_address
  2: string auth
  3: bool attempting_auth
}

struct SomfyCredentials {
  1: map<string, SomfyCredential> credentials
}

struct SomfyIntegrationStates {
  1: map<string, configuration.ThirdpartyIntegrationState> integration_states
}
