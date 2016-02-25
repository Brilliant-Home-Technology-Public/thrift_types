namespace py thrift_types.test
/* This really should be somewhere else */

struct SimpleStruct {
  1: string field1
}

service TestService {
  void method_with_no_args()
  void method_with_primitive_args(1: string arg1, 2: i32 arg2)
  void method_with_struct_arg(1: SimpleStruct arg1)
  i32 method_returning_primitive()
  SimpleStruct method_returning_struct()
}
