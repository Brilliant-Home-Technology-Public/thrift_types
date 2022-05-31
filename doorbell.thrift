namespace py thrift_types.doorbell
namespace java thrift_types.doorbell

include "configuration.thrift"

// Ring Pro model names currently are: lpd_v1 and lpd_v2
const string RING_PRO_MODEL_PREFIX = "lpd"
// Ring Elite model names currently are: jbox_v1
const string RING_ELITE_MODEL_PREFIX = "jbox"

enum ChimeSetting {
    UNKNOWN = 0,
    DO_NOT_PLAY = 1,
    PLAY_ONCE = 2,
    PLAY_TWICE = 3,
    PLAY_THRICE = 4,
}

// Doorbell Settings

struct DoorbellNotificationConfiguration {
  1: list<configuration.UniquePeripheralID> controlled_peripherals = []
}
