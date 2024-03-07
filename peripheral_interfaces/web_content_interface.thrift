namespace py thrift_types.peripheral_interfaces.web_content_interface
namespace java thrift_types.peripheral_interfaces.web_content_interface

include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct WebContentPeripheralInterface {
  1: string stun_server
  2: string support_bluetooth_troubleshooting_link
  3: string support_climate_alerts_troubleshooting_link
  4: string support_genie_remote_command_disabled_link
  5: string support_homekit_link
  6: string support_honeywell_tc2_unsupported_panels_link
  7: string support_honeywell_tc2_video_troubleshooting_link
  8: string support_honeywell_water_shutoff_valve_troubleshooting_link
  9: string support_mesh_network_update_link
  10: string support_nest_account_migration_link
  11: string support_nest_no_devices_found_link
  12: string support_nest_partner_connection_manager_link
  13: string support_reattach_faceplate_link
  14: string support_salto_ks_link
  15: string support_smartthings_api_migration_link
  16: string support_smartthings_arlo_setup_link
  17: string support_smartthings_leviton_setup_link
  18: string support_smartthings_lutron_setup_link
  19: string support_smartthings_video_troubleshooting_link
  20: string support_video_audio_intercom_link
  21: string thirdparty_notices_link
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'WebContentPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.WEB_CONTENT,
}
