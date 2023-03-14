namespace py thrift_types.uart
namespace java thrift_types.uart

# XXX: This constant represents another UARTDeviceType, but Swift and Java compilers generate a
# enum identifier representing -1 that would conflict with UARTDeviceType's equivalent identifier
const i32 UNKNOWN_UART_DEVICE_TYPE = -1

# Enum values match device_type values given by the "idnt" command
enum UARTDeviceType {
  GANGBOX = 0
  FACEPLATE = 1
  LOADLESS_BASE = 2
}
