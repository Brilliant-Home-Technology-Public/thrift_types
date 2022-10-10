// DEPRECATED
namespace py thrift_types.salto_ks
namespace java thrift_types.salto_ks

const string SALTO_OTP_INVALID_ERROR_CODE = "otp_invalid"

enum IQAuthState {
	NEVER_ATTEMPTED = 0,
	AUTHORIZED = 1,
	DEAUTHORIZED = 2,
}

struct IQAuthData {
	1: string otp
	2: string pin
}
