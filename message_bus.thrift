const string IDENTIFIER = "message_bus"

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