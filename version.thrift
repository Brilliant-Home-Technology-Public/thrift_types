namespace py thrift_types.version
namespace java thrift_types.version

// Following versions introduce synchronize_home() to RemoteBridge API.
// Initially treated as experimental, with phased roll-out.
const string VERSION_20230704 = "20230704"  // MUST send/receive synchronize_home()
const string VERSION_20230702 = "20230702"  // MAY send/receive synchronize_home()

// MOST RECENT VERSION:
const string VERSION_20200923 = "20200923"

// OLD VERSIONS:
const string VERSION_20190903 = "20190903"
const string VERSION_20190716 = "20190716"
const string VERSION_20190614 = "20190614"
const string VERSION_20190604 = "20190604"
const string VERSION_20190530 = "20190530"
const string VERSION_20190412 = "20190412"
const string VERSION_20190204 = "20190204"
const string VERSION_20190130 = "20190130"
const string VERSION_20181018 = "20181018"
const string VERSION_20181005 = "20181005"
const string VERSION_20180925 = "20180925"
const string VERSION_20180808 = "20180808"
const string VERSION_20180620 = "20180620"
const string VERSION_20180605 = "20180605"
const string VERSION_20180420 = "20180420"
const string VERSION_20180221 = "20180221"
