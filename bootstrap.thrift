namespace py thrift_types.bootstrap

enum BootstrapStatus {
  IDLE = 0,
  SCANNING = 1,
  AUTHENTICATING = 2,
  COMPLETED = 3,
  FAILED = 4,
}
