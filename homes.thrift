namespace py thrift_types.homes
namespace java thrift_types.homes

struct Home {
    1: string user_id
    2: string home_id
}

service HomesService {
    Home add_home(
      1: string user_id,
    )
}
