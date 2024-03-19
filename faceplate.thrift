namespace py thrift_types.faceplate
namespace java thrift_types.faceplate

# V0 <-> iMX6 faceplate (a.k.a faceplate v1)
# V2 <-> i350 faceplate (a.k.a faceplate v1.5) flashed with an Atmel bootloader that does NOT
#        support < 4 MHz clock and clock calibration
#     - Only compatible with iMX6 faceplate firmwares despite being an i350
#     - Includes only EVT and some DVT i350 faceplates
# V3 <-> i350 faceplate flashed with an Atmel bootloader that supports < 4 MHz clock and clock
#        calibration
#     - Only compatible with i350 faceplate firmwares
#     - Includes some DVT and all post-DVT i350 faceplates
# No faceplates were ever flashed with device revision 1.
# The purpose of this enum is to explicitly represent hardware revisions, not implicitly represent
# SoCs; the latter are explicitly represented by the SoC enum in hardware.thrift.
enum FaceplateDeviceRevision {
  # XXX: We use 2^16 here instead of -1 because our Swift and Java compilers generate an enum
  # identifier representing -1 that would conflict with FaceplateDeviceRevision's equivalent
  # identifier
  UNKNOWN = 65536
  V0 = 0, # As noted above this actually corresponds to a faceplate v1
  V2 = 2,
  V3 = 3,
}
