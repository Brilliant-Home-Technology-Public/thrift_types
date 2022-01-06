namespace py thrift_types.homekit
namespace java thrift_types.homekit

include "configuration.thrift"

struct MFiToken {
  1: string uuid
  2: string token_data
}

struct ExposedFixtures {
  1: optional list<configuration.UniquePeripheralID> exposed_peripheral_ids
}

struct SetupInfo {
  1: string setup_uri
  2: string setup_code
}

