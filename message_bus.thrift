const string IDENTIFIER = "message_bus"
const string OWNER_DEVICE_IDENTIFIER = "message_bus_owner"

struct Variable {
  1: string name
  2: string value
  3: i64 timestamp
  4: bool externally_settable
}

struct PeripheralMetadata {
  1: string name
  2: map<string, Variable> variables
}

struct Peripheral {
  1: string name
  2: map<string, Variable> variables
}

struct Device {
  1: string name
  2: map<string, Peripheral> peripherals
}

struct SubscriptionNotification {
  1: Device updated_device
}

struct Devices {
  1: list<Device> devices
}

service MessageBusPeerService {

  Devices get_all()
  Device get_device(1: string device_name)
  Peripheral get_peripheral(1: string device_name, 2: string peripheral_name)

  void set_variable(
      1: string device_name,
      2: string peripheral_name,
      3: string variable_name,
      4: string value,
  )
  void set_variable_request(
      1: string device_name,
      2: string peripheral_name,
      3: string variable_name,
      4: string value,
  )
  void set_device(1: Device device)

  void subscribe_all(1: string subscriber_name)
  void subscribe_device(1: string subscriber_name, 2: string device_name)
  void subscribe_peripheral(
      1: string subscriber_name,
      2: string device_name,
      3: string peripheral_name,
  )
}
