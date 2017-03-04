namespace py thrift_types.device_provisioning

include "configuration.thrift"

const string DEVICE_PROVISIONING_SERVICE_UUID = "6b11c0d6-e1fa-4a78-8a29-bbd7a156ed9a" // Randomly generated

struct JoinHomeResponse {
  1: configuration.DeviceAuthorizationStatus authorization_status
  // Following fields only filled out if device is authorized
  2: optional string home_id
  3: optional map<string, string> wifi_variables
}


service DeviceProvisioningService {

  JoinHomeResponse join_home(
      1: string device_id,
  )

}
