namespace py thrift_types.request_dispatcher
namespace java thrift_types.request_dispatcher

include "configuration.thrift"

struct StatefulDispatchRequestDetails {
  1: string context_id
  // Static set of variables are whitelisted to support adjust_proportionally.
  // For now, it will just be intensity.
  2: bool adjust_proportionally
}

struct DispatchRequest {
  1: configuration.ActionSet action_set_intention
  2: optional StatefulDispatchRequestDetails stateful_details
}
