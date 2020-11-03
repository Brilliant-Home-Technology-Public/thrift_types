namespace py thrift_types.peripheral_interfaces.salto_ks_iq_interface
namespace java thrift_types.peripheral_interfaces.salto_ks_iq_interface

include "../message_bus.thrift"
include "../lock.thrift"
include "peripheral_interface.thrift"

struct SaltoKSIQPeripheralInterface {
	1: string display_name
	2: lock.LockIds lock_ids
}

const peripheral_interface.PeripheralInterface peripheral = {
  'peripheral_interface_name': 'SaltoKSIQPeripheralInterface',
  'peripheral_type': message_bus.PeripheralType.SALTO_KS_IQ,
}
