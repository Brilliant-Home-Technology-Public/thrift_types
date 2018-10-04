# thrift_types
# Rules for thrift files in thrift_types
We use the thrift_types submodule to share a data schema using a unified IDL(Thrift) across platforms. Each platform has its own idiosyncrasies so these rules need to be followed so as not to break other platforms.

**VERSION_UPDATE** = Steps followed here: https://github.com/ramjet-labs/lib/tree/master/versioning

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
  * Renumbering fields is **NOT OK** UNLESS the struct has NEVER been stored serialized in production
  * Re-using a field number is **NOT-OK** UNLESS the struct has NEVER been stored serialized in production
* **Structs**
  * Adding a new struct is OK
  * Removinng a struct is **DISCOURAGED**
* **Constants**
  * Adding constants is **OK**
  * Changing constant values is **OK-ISH**
  * Changing constant names is **DISCOURAGED**
  * Removing constants is **DISCOURAGED**
* **Interfaces**
  * SOMEONE ELSE FILL THIS OUT
