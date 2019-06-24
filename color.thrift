namespace py thrift_types.color
namespace java thrift_types.color

struct RGB {
  1: i32 r
  2: i32 g
  3: i32 b
}

struct Color {
  1: string name
  2: optional i32 temp
  3: optional i32 hue
  4: optional i32 sat
  5: optional RGB rgb
}
