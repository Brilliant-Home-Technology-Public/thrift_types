namespace py thrift_types.hardware

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
}
