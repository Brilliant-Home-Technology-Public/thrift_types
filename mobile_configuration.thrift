namespace py thrift_types.mobile_configuration
namespace java thrift_types.mobile_configuration

const i64 ALLEGION_MOBILECREDENTIAL_ACCEPTED_SENTINEL = -1
const i64 ALLEGION_MOBILECREDENTIAL_DECLINED_SENTINEL = -2
const i64 ALLEGION_MOBILECREDENTIAL_UNDETERMINED_SENTINEL = -3

struct Profiles {
  1: list<string> profile_names
}
