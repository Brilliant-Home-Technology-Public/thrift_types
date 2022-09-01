namespace py thrift_types.hunter_douglas
namespace java thrift_types.hunter_douglas

struct HunterDouglasGatewayInfo {
  1: string gateway_id
  2: string ip_address
}

struct HunterDouglasGatewayInfos {
  1: map<string, HunterDouglasGatewayInfo> gateway_infos
}
