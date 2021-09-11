# thrift_types

# Naming note
Swift's compiler does not support namespacing so please be careful to avoid naming collisions within the thrift_types repo, as well as collisions with typical system classes like "Date", "Time", etc. as they will not be compilable in Swift.

# Rules for thrift files in thrift_types
We use the thrift_types submodule to share a data schema using a unified IDL(Thrift) across platforms. Each platform has its own idiosyncrasies so these rules need to be followed so as not to break other platforms.

**VERSION_UPDATE** = Steps followed here: https://github.com/ramjet-labs/lib/tree/master/src/lib/versioning
Things that require a version update (AND MIGRATION):
* Adding a new non-optional field to an existing struct
* Removing a non-optional field
* Adding a default value to an existing field
* Changing a default value for an existing field
* Changing the meaning/usage of an existing field

**OK** = No additional action is needed

**OK-ISH** = It would be polite to notify someone from the other platforms as it may result in some work in the future

**DISCOURAGED** = Consult someone from each of the following platforms [Switch, Server, Mobile] before doing this as it will eventually cause work for each them so they should be made aware.

**NOT OK** = Don't do this. Just don't.


* **Fields**
  * Adding an optional field is **OK**
    * Potentially is **OK-ISH** if the struct is created on multiple clients i.e. SceneAction, Scene, mobile_log.thrift, etc
  * Adding a non-optional field is **NOT OK**. UNLESS one of the following is true:
    * The field is a critical field (i.e. peripheralId, deviceId) AND you have completed a VERSION_UPDATE **OK-ISH**
    * The field is in a new struct **OK**
  * Removing an optional field is **OK**
  * Removing a non-optional field is **OK-ISH** AND requires a VERSION_UPDATE
  * Changing a non-optional field to optional is **OK-ISH** AND requires a VERSION_UPDATE
  * Changing an optional field to non-optional is **NOT OK** UNLESS the following is true:
    * The field is a critical field (i.e. peripheralId, deviceId) AND you have completed a VERSION_UPDATE **OK-ISH**
  * Renumbering fields is **NOT OK** UNLESS the struct has NEVER been stored serialized in production
  * Re-using a field number is **NOT-OK** UNLESS the struct has NEVER been stored serialized in production
  * Structs defined in peripheral_interfaces in general are not stored serialized in production (As of 10/19/2018)
  * Recursive Structs (e.g. GuideRule struct contains a field of type list<GuideRule>) is **NOT OK** because thrift 0.9.3 does not support this (specifically the Python compiler does not support and the thrift serialization/deserialization is unknown). Thrift 0.11.0 does support this but migrating to a more recent version is a large task that requires further investigation.
* **Structs**
  * Adding a new struct is OK
  * Removing a struct is **DISCOURAGED**
* **Default Values**
  * Adding default values for new fields is **OK**
    * Prefer values that will evaluate to false or empty (i.e. 0, false, empty list, empty map, etc)
  * Adding default values for existing fields is **NOT OK**
  * Changing default values is **NOT OK**
* **Constants**
  * Constants names should be **UPPERCASED**
  * Adding constants is **OK**
  * Changing constant values is **OK-ISH**
  * Changing constant names is **DISCOURAGED**
  * Removing constants is **DISCOURAGED**
* **Interfaces**
  * Android/iOS Clients currently do not use PeripheralInterfaces
  * Server checks this to alert on missing variables in server owned peripherals. Variables should be added to the interface and thrift_types deployed to server before/in tandem with adding the actual variable
  * Any new variable to an existing peripheral interface for a peripheral that lives in server MUST initially be optional. After all homes have been migrated, this can potentially be made required.
  * RULES:
    * SOMEONE ELSE FILL THIS OUT
