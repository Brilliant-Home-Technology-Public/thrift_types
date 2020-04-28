namespace py thrift_types.lock
namespace java thrift_types.lock

enum BatteryStatus {
  NORMAL = 1,
  LOW = 2,
}

enum LockStatus {
  UNKNOWN = 0,
  NORMAL = 1,
  JAMMED = 2,
}
