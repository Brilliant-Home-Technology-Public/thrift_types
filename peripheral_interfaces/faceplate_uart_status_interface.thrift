namespace py thrift_types.peripheral_interfaces.faceplate_uart_status_interface
namespace java thrift_types.peripheral_interfaces.faceplate_uart_status_interface

include "../faceplate.thrift"
include "../hardware.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"


struct FaceplateUARTStatusPeripheralInterface {
  1: hardware.FirmwareUpdateStatus firmware_update_status
  2: string target_firmware_git_version
  3: string reported_firmware_git_version
  4: faceplate.FaceplateDeviceRevision device_revision
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'FaceplateUARTStatusPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.FACEPLATE_UART_STATUS,
}
