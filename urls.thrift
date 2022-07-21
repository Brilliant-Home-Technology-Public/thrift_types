namespace py thrift_types.urls
namespace java thrift_types.urls

// When opened on iOS or Android, the base url will launch the app (or navigate to the App Store
// or Play store if the app is not installed)
const string MOBILE_UNIVERSAL_LINK_BASE_URL = "https://web-api.brilliant.tech/web/mobile-app"

// Hosts

const string MOBILE_UNIVERSAL_LINK_ADD_DEVICE_HOST = "add"
const string MOBILE_UNIVERSAL_LINK_HOST = "web-api.brilliant.tech"

// Parameter keys

const string MOBILE_UNIVERSAL_LINK_INTEGRATION_PARAMETER_KEY = "integration"
const string MOBILE_UNIVERSAL_LINK_TYPE_PARAMETER_KEY = "type"

// Parameter values

// Launches add device flow, integration can be specified with the integration parameter
const string MOBILE_UNIVERSAL_LINK_ADD_TYPE_PARAMETER = "add"
