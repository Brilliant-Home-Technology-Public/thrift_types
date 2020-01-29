namespace py thrift_types.peripheral_interfaces.oauth_configuration_interface
namespace java thrift_types.peripheral_interfaces.oauth_configuration_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct OAuthConfigurationPeripheralInterface {
  1: string august_api_key
  2: string august_client_id
  3: string butterflymx_client_id
  4: string butterflymx_environment_id
  5: string genie_api_key
  6: string genie_api_prefix
  7: string genie_client_id
  8: string nest_client_id
  9: string ecobee_client_id
  10: string honeywell_client_id
  11: string lifx_client_id
  12: string ring_client_id
  13: string schlage_api_key
  14: string schlage_client_id
  15: string schlage_subscription_key
  16: string smartthings_client_id
  17: string tplink_api_key
  18: string tplink_client_id
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'OAuthConfigurationPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.OAUTH_CONFIGURATION,
  'dynamic_variable_prefix': 'oauth_config:',
  'dynamic_variable_ttype': 'configuration.OAuthConfiguration'
}
