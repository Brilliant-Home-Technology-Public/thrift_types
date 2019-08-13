namespace py thrift_types.demo
namespace java thrift_types.demo

include "message_bus.thrift"

const string RESTORE_DEMO_STATE_SCENE = "restore_demo_state"
const string DEMO_PROVISIONING_SSID = "brilliant_demo_provisioning"

enum DemoType {
  NONE = 0,
  SALES_KIT = 1,
  CHANNEL = 2,
  CONFERENCE = 3,
}
