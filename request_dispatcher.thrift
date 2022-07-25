namespace py thrift_types.request_dispatcher
namespace java thrift_types.request_dispatcher

include "configuration.thrift"

struct DispatchRequest {
  1: configuration.ActionSet action_set_intention
}
