namespace py thrift_types.butterflymx
namespace java thrift_types.butterflymx

const string BUTTERFLYMX_API_URL_BASE = "https://apitest.butterflymx.com"
const string BUTTERFLYMX_ACCOUNT_URL_BASE = "https://accountstest.butterflymx.com"
const string BUTTERFLYMX_PERIPHERAL_ID = "butterflymx_panel_peripheral"

enum MediaTransmission {
  NONE = 0
  // Chosen so AUDIO_AND_VIDEO == (AUDIO | VIDEO)
  AUDIO = 1
  VIDEO = 2
  AUDIO_AND_VIDEO = 3
}
