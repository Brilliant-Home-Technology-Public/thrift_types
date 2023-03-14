namespace py thrift_types.uart
namespace java thrift_types.uart

# Enum values (apart from UNKNOWN) match device_type values given by the "idnt" command
enum UARTDeviceType {
  # XXX: We use 2^16 here instead of -1 because our Swift and Java compilers generate an enum
  # identifier representing -1 that would conflict with UARTDeviceType's equivalent identifier
  UNKNOWN = 65536
  GANGBOX = 0
  FACEPLATE = 1
  LOADLESS_BASE = 2
}
