namespace py thrift_types.uart
namespace java thrift_types.uart

# Enum values (apart from UNKNOWN) match device_type values given by the "idnt" command
enum UARTDeviceType {
  UNKNOWN = -1
  GANGBOX = 0
  FACEPLATE = 1
  LOADLESS_BASE = 2
}
