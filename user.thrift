namespace py thrift_types.user
namespace java thrift_types.user

struct User {
  1: string user_id
  2: string email_address
  3: string given_name
  4: string family_name
}

struct Users {
  1: list<User> users
}
