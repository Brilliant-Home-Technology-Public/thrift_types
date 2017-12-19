namespace py thrift_types.test
namespace java thrift_types.test
/* This really should be somewhere else */

struct SimpleStruct {
  1: string field1
}

struct ComplexStruct {
  1: string str_field
  2: SimpleStruct struct_field
  3: list<i64> list_field
  4: map<string, i64> map_field
  5: map<string, map<string, SimpleStruct>> nested_map
  6: list<list<i64>> nested_list_field
}

service TestService {
  void method_with_no_args()
  void method_with_primitive_args(1: string arg1, 2: i32 arg2)
  void method_with_struct_arg(1: SimpleStruct arg1)
  i32 method_returning_primitive()
  SimpleStruct method_returning_struct()
  oneway void oneway_method()
}
