namespace py thrift_types.returns
namespace java thrift_types.returns


enum ReturnType {
  UNKNOWN = 0,
  // The order has been fulfilled and is within the refund period.
  REFUND = 1,
  // The order has been fulfilled but is outside the refund period, or the user
  // just wants an exchange.
  ADVANCED_EXCHANGE = 2,
  // The order has not yet been dropped.
  CANCELLATION = 3,
  // The order has been dropped, but not completely fulfilled.
  UNFULFILLED = 4,
}
