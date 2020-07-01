namespace py thrift_types.spectrum_brands
namespace java thrift_types.spectrum_brands

// Lock states from Spectrum Brands API
// https://drive.google.com/file/d/1an1Y9qZ2bbsE_0_BO-Nik3w3kXqjQ4tq/view
const string LOCK_STATE_LOCKED = "Locked"
const string LOCK_STATE_UNLOCKED = "Unlocked"
const string LOCK_STATE_JAMMED = "Jammed"

// Request header keys for Spectrum Brands API calls
const string API_KEY_REQUEST_HEADER_KEY = "x-api-key"
const string CORRELATION_ID_REQUEST_HEADER_KEY = "x-correlation-id"
const string REQUEST_ID_REQUEST_HEADER_KEY = "x-request-id"

// Request body keys and values for Spectrum Brands API calls
const string ACTION_KEY = "action"
const string LOCK_ACTION = "Lock"
const string UNLOCK_ACTION = "Unlock"

// Webhook notification body keys and values from Spectrum Brands API
const string EVENT_KEY_STATE = "spectrum_brands:state"
const string NOTIFICATION_ACTION_LOCK_STATUS_CHANGE = "lock.statuschange"
const string NOTIFICATION_ACTION_LOCK_UPDATED = "lock.updated"
