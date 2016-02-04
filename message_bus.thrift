struct PeripheralMetadata {
  1: string name  
}

struct Variable {
  1: string name
  2: string value
  3: i64 timestamp
  4: bool externally_settable
}

struct Peripheral {
  1: string name
  2: map<string, Variable> variables
}

struct Device {
  1: string name
  2: map<string, Peripheral> peripherals
}

struct PeripheralSubscriptionNotification {
  1: string device_name
  2: Peripheral updated_peripheral
}

struct DeviceSubscriptionNotification {
  1: Device updated_device
}

struct Devices {
  1: list<Device> devices
}