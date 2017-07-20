namespace py thrift_types.device_provisioning

include "configuration.thrift"

const string DEVICE_PROVISIONING_SERVICE_UUID = "6b11c0d6-e1fa-4a78-8a29-bbd7a156ed9a" // Randomly generated

enum AuthenticationStatus {
  PENDING = 1
  COMMITTED = 2
  ACCEPTED = 3
  REJECTED = 4
  THROTTLED = 5
}

struct JoinHomeResponse {
  1: AuthenticationStatus authentication_status
  // Following fields only filled out if device is authorized
  2: optional string home_id
  3: optional map<string, string> wifi_variables
  4: optional list<configuration.DeviceAuthorizationState> authorized_devices
}

struct KnockOnHomeResponse {
  1: AuthenticationStatus authentication_status
  2: optional string server_authentication_commitment
  3: optional string home_id
  4: optional string home_name
  5: optional string server_device_id
}

struct CommitAuthenticationResponse {
  1: AuthenticationStatus authentication_status
  2: optional string server_commitment_secret
}


service DeviceProvisioningService {

  KnockOnHomeResponse knock_on_home(
      1: string client_device_id,
      2: string display_name,
  )

  CommitAuthenticationResponse commit_authentication(
      1: string client_device_id,
      2: string home_id,
      3: string client_authentication_commitment,
  )

  JoinHomeResponse join_home(
      1: string client_device_id,
      2: string home_id,
      3: string client_commitment_secret,
  )

}
