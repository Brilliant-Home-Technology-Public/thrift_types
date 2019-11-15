namespace py thrift_types.peripheral_interfaces.building_entry_panel_interface
namespace java thrift_types.peripheral_interfaces.building_entry_panel_interface

include "../configuration.thrift"
include "../message_bus.thrift"
include "../remote_media.thrift"
include "peripheral_interface.thrift"

struct BuildingEntryPanelPeripheralInterface {
  1: configuration.RoomAssignment room_assignment
  2: string thirdparty_display_name
  3: string call_guid
  4: string video_call_answering_device_id
  5: string call_offer_sdp
  6: string call_answer_sdp
  7: string call_preview_image
  8: remote_media.MediaTransmission media_transmitted
  9: bool grant_access
  10: i16 chime_count
  11: message_bus.Event event
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'BuildingEntryPanelPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.BUILDING_ENTRY_PANEL
}
