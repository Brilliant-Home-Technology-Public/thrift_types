namespace py thrift_types.peripheral_interfaces.gangbox_uart_status_interface
namespace java thrift_types.peripheral_interfaces.gangbox_uart_status_interface

include "../gangbox.thrift"
include "../hardware.thrift"
include "../message_bus.thrift"
include "peripheral_interface.thrift"
include "../uart.thrift"


struct GangboxUARTStatusPeripheralInterface {
  1: hardware.FirmwareUpdateStatus firmware_update_status
  2: string target_firmware_git_version
  3: string reported_firmware_git_version
  4: bool use_beta_firmware
  5: gangbox.GangboxDeviceRevision device_revision
  6: uart.UARTDeviceType device_type
  7: string reboot
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'GangboxUARTStatusPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.GANGBOX_UART_STATUS,
}
