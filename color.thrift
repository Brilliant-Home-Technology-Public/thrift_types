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

const Color WARM_WHITE = {
  "name": "Warm White",
  "temp": 454,
  "hue": 7613,
  "sat": 203,
  "rgb": {"r": 241, "g": 152, "b": 70}
}

const Color SOFT_WHITE = {
  "name": "Soft White",
  "temp": 370,
  "hue": 8362,
  "sat": 143,
  "rgb": {"r": 243, "g": 172, "b": 102}
}

const Color WHITE = {
  "name": "White",
  "temp": 250,
  "hue": 13248,
  "sat": 5,
  "rgb": {"r": 248, "g": 209, "b": 170}
}

const Color DAYLIGHT_WHITE = {
  "name": "Daylight White",
  "temp": 181,
  "hue": 41044,
  "sat": 56,
  "rgb": {"r": 252, "g": 236, "b": 225}
}

const Color COOL_WHITE = {
  "name": "Cool White",
  "temp": 153,
  "hue": 41491,
  "sat": 78,
  "rgb": {"r": 245, "g": 243, "b": 254}
}

const Color RED = {
  "name": "Red",
  "temp": 153,
  "hue": 0,
  "sat": 254,
  "rgb": {"r": 235, "g": 50, "b": 35}
}

const Color CRIMSON = {
  "name": "Crimson",
  "temp": 153,
  "hue": 63992,
  "sat": 254,
  "rgb": {"r": 235, "g": 57, "b": 76}
}

const Color SALMON = {
  "name": "Salmon",
  "temp": 432,
  "hue": 746,
  "sat": 98,
  "rgb": {"r": 242, "g": 164, "b": 129}
}

const Color ORANGE = {
  "name": "Orange",
  "temp": 500,
  "hue": 6685,
  "sat": 254,
  "rgb": {"r": 243, "g": 168, "b": 60}
}

const Color GOLD = {
  "name": "Gold",
  "temp": 443,
  "hue": 9374,
  "sat": 254,
  "rgb": {"r": 249, "g": 212, "b": 72}
}

const Color YELLOW = {
  "name": "Yellow",
  "temp": 369,
  "hue": 11350,
  "sat": 254
  "rgb": {"r": 255, "g": 253, "b": 84}
}

const Color GREEN = {
  "name": "Green",
  "temp": 153,
  "hue": 25600,
  "sat": 254,
  "rgb": {"r": 117, "g": 249, "b": 76}
}

const Color TURQOISE = {
  "name": "Turqoise",
  "temp": 153,
  "hue": 37464,
  "sat": 244,
  "rgb": {"r": 131, "g": 251, "b": 237}
}

const Color CYAN = {
  "name": "Cyan",
  "temp": 153,
  "hue": 38507,
  "sat": 254,
  "rgb": {"r": 114, "g": 251, "b": 253}
}

const Color SKY_BLUE = {
  "name": "Sky Blue",
  "temp": 153,
  "hue": 40602,
  "sat": 189,
  "rgb": {"r": 164, "g": 223, "b": 252}
}

const Color BLUE = {
  "name": "Blue",
  "temp": 153,
  "hue": 47104,
  "sat": 189,
  "rgb": {"r": 0, "g": 39, "b": 245}
}

const Color PURPLE = {
  "name": "Purple",
  "temp": 153,
  "hue": 50116,
  "sat": 248,
  "rgb": {"r": 156, "g": 64, "b": 246}
}

const Color MAGENTA = {
  "name": "Magenta",
  "temp": 153,
  "hue": 53311,
  "sat": 254,
  "rgb": {"r": 234, "g": 65, "b": 247}
}

const Color PINK = {
  "name": "Pink",
  "temp": 247,
  "hue": 54827,
  "sat": 80,
  "rgb": {"r": 245, "g": 194, "b": 204}
}

const Color LAVENDER = {
  "name": "Lavender",
  "temp": 153,
  "hue": 47245,
  "sat": 166,
  "rgb": {"r": 153, "g": 133, "b": 247}
}

const list<Color> supported_colors = [
  {
    "name": "Red",
    "hue": 0,
    "sat": 254,
    "rgb": {"r": 235, "g": 50, "b": 35}
  },
   {
    "name": "Crimson",
    "hue": 63992,
    "sat": 254,
    "rgb": {"r": 235, "g": 57, "b": 76}
  },
  {
    "name": "Salmon",
    "hue": 746,
    "sat": 98,
    "rgb": {"r": 242, "g": 164, "b": 129}
  },
  {
    "name": "Orange",
    "hue": 6685,
    "sat": 254,
    "rgb": {"r": 243, "g": 168, "b": 60}
  },
  {
    "name": "Gold",
    "hue": 9374,
    "sat": 254,
    "rgb": {"r": 249, "g": 212, "b": 72}
  },
  {
    "name": "Yellow",
    "hue": 11350,
    "sat": 254
    "rgb": {"r": 255, "g": 253, "b": 84}
  },
  {
    "name": "Green",
    "hue": 25600,
    "sat": 254,
    "rgb": {"r": 117, "g": 249, "b": 76}
  },
  {
    "name": "Turqoise",
    "hue": 37464,
    "sat": 244,
    "rgb": {"r": 131, "g": 251, "b": 237}
  },
  {
    "name": "Cyan",
    "hue": 38507,
    "sat": 254,
    "rgb": {"r": 114, "g": 251, "b": 253}
  },
  {
    "name": "Sky Blue",
    "hue": 40602,
    "sat": 189,
    "rgb": {"r": 164, "g": 223, "b": 252}
  },
  {
    "name": "Blue",
    "hue": 47104,
    "sat": 189,
    "rgb": {"r": 0, "g": 39, "b": 245}
  },
  {
    "name": "Purple",
    "hue": 50116,
    "sat": 248,
    "rgb": {"r": 156, "g": 64, "b": 246}
  },
  {
    "name": "Magenta",
    "hue": 53311,
    "sat": 254,
    "rgb": {"r": 234, "g": 65, "b": 247}
  },
  {
    "name": "Pink",
    "hue": 54827,
    "sat": 80,
    "rgb": {"r": 245, "g": 194, "b": 204}
  },
  {
    "name": "Lavender",
    "hue": 47245,
    "sat": 166,
    "rgb": {"r": 153, "g": 133, "b": 247}
  },
]

const list<Color> supported_temps = [
  {
    "name": "Warm White",
    "temp": 454,
    "rgb": {"r": 241, "g": 152, "b": 70},
  },
  {
    "name": "Soft White",
    "temp": 370,
    "rgb": {"r": 243, "g": 172, "b": 102},
  },
  {
    "name": "White",
    "temp": 250,
    "rgb": {"r": 248, "g": 209, "b": 170},
  },
  {
    "name": "Daylight White",
    "temp": 181,
    "rgb": {"r": 252, "g": 236, "b": 225},
  },
  {
    "name": "Cool White",
    "temp": 153,
    "rgb": {"r": 245, "g": 243, "b": 254},
  },
]
