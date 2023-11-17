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


# These details can be found on mfi.apple.com.
# Historically, we used the Jabil PPID for internally flashed devices.
const string INFIELD_HOMEKIT_AUTH_ENTITY_PPID = "244541-0003"
const string JABIL_FACTORY_HOMEKIT_AUTH_ENTITY_PPID = "244541-0004"
const string VTECH_FACTORY_HOMEKIT_AUTH_ENTITY_PPID = "244541-171532"
const map<string, map<string, string>> PRODUCT_PLAN_DETAILS_BY_PPID = {
    JABIL_FACTORY_HOMEKIT_AUTH_ENTITY_PPID: {
        "product_data": "01651fe302eb7eac"
    },
    VTECH_FACTORY_HOMEKIT_AUTH_ENTITY_PPID: {
        "product_data": "01651fe3f3a8f263"
    },
}
