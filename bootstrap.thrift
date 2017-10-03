namespace py thrift_types.bootstrap

enum BootstrapStatus {
  IDLE = 0,
  SCANNING = 1,
  KNOCKING = 2,
  HOME_BUSY = 3,
  HOME_THROTTLED = 4,
  AUTHENTICATING = 5,
  COMPLETED = 6,
  AUTHENTICATION_FAILED = 7,
}
