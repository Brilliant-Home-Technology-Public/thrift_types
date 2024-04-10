namespace py thrift_types.peripheral_interfaces.oauth_configuration_interface
namespace java thrift_types.peripheral_interfaces.oauth_configuration_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct OAuthConfigurationPeripheralInterface {
  // KEEP ALPHABETICAL
  // NEXT ID: 39
  1: string august_api_key
  2: string august_client_id
  20: string butterflymx_api_prefix
  3: string butterflymx_client_id
  21: string butterflymx_oauth_api_prefix
  4: optional string butterflymx_environment_id // deleted
  9: string ecobee_client_id
  37: string enphase_api_key
  38: string enphase_client_id
  5: string genie_api_key
  6: string genie_api_prefix
  7: string genie_client_id
  22: string honeywell_api_prefix
  10: string honeywell_client_id
  23: string honeywell_tc2_api_prefix
  24: string honeywell_tc2_client_id
  11: string lifx_client_id
  8: string nest_client_id
  25: string nest_project_id
  19: string pvwatts_api_key
  26: string pvwatts_client_id
  27: string remotelock_api_prefix
  28: string remotelock_client_id
  29: string ring_api_prefix
  12: string ring_client_id
  30: string salto_ks_api_prefix
  31: string salto_ks_client_id
  13: string schlage_api_key
  14: string schlage_client_id
  15: string schlage_subscription_key
  32: string schneider_client_id
  16: string smartthings_client_id
  33: string spectrum_brands_api_key
  34: string spectrum_brands_api_prefix
  35: string spectrum_brands_client_id
  17: string tplink_api_key
  36: string tplink_api_prefix
  18: string tplink_client_id
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'OAuthConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.OAUTH_CONFIGURATION,
  'dynamic_variable_prefix': 'oauth_config:',
  'dynamic_variable_ttype': 'configuration.OAuthConfiguration'
}
