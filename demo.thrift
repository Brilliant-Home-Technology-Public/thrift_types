namespace py thrift_types.demo
namespace java thrift_types.demo

include "message_bus.thrift"

const string RESTORE_DEMO_STATE_SCENE = "restore_demo_state"

enum DemoType {
  NONE = 0,
  SALES_KIT = 1,
  CHANNEL = 2,
}
