namespace py thrift_types.hardware
namespace java thrift_types.hardware

enum SoftwareSupportStatus {
  UNKNOWN = 0,
  SUPPORTED = 1,
  UNSUPPORTED = 2,
}

enum FirmwareUpdateStatus {
	UNKNOWN = 0,
	SUCCESS = 1, // Update succeeded
	FAILED = 2, // An exception occured during update but firmware functional
	ROLLBACK_SUCCESS = 3, // Rollback succeeded
	ROLLBACK_FAILURE = 4, // An exception occured during rollback but firmware functional
	UNRECOVERABLE = 5, // Firmware will not function
}

enum FirmwareUpdateFailureCode {
	UNKNOWN = 0,
	MISSING_APP_FILE = 1,
	CORRUPTED_APP_FILE=2,
	BOOTLOADER_UNAVAILABLE=3,
	GIT_VERSION_MISMATCH=4,
	API_VERSION_RESTRICTION=5,
}

enum DisplayOption {
	ALWAYS_ON = 0,
	ALWAYS_OFF = 1,
	WINDOW = 2,
}

enum SoftwareReleaseStage {
  UNKNOWN = 0,
  STABLE = 1,
  LATEST = 2,
  UNINITIALIZED = 3,
}


/*
 *  Temperature trip thresholds are:
 *
 *  80C: NONE
 *    GPU clock: 64/64 when active, 16/64 when art transitioning, 4/64 when art is still
 *    CPU governor: default (interactive)
 *    screen_brightness: full brightness
 *
 *  85C: LIGHT
 *    GPU clock: 64/64 when active, 16/64 when art transitioning, 4/64 when art is still
 *    CPU governor: default (interactive)
 *    screen_brightness: full brightness
 *
 *  90C: MEDIUM
 *    GPU clock: 64/64 when active, 16/64 when art transitioning, 4/64 when art is still
 *    CPU governor: default (interactive)
 *    screen_brightness: full brightness
 *
 *  95C: HEAVY
 *    GPU clock: 4/64
 *    CPU governor: powersave
 *    screen_brightness: half brightness
 *
 *  LOW_TEMP_MODE (manual set, ignores temperature trips):
 *    GPU clock: 8/64
 *    CPU governor: powersave
 *    screen_brightness: half brightness
 *
 *  Throttling stops when temperature drops under 90
*/
enum ThermalThrottleLevel {
  NONE = 0,
  LIGHT = 1,
  MEDIUM = 2,
  HEAVY = 3,
  LOW_TEMP_MODE = 4,
}

const i32 THERMAL_THROTTLE_NONE_TEMP = 80
const i32 THERMAL_THROTTLE_LIGHT_TEMP = 85
const i32 THERMAL_THROTTLE_MEDIUM_TEMP = 90
const i32 THERMAL_THROTTLE_HEAVY_TEMP = 95

struct FilesystemStatus {
  1: i64 bytes_total
  2: i64 bytes_used
}
