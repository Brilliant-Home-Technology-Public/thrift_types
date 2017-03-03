Alexanamespace py thrift_types.voice

enum AlexaStatus {
  // This defines the voice recognition state machine
  //
  //     Alexa, what is the time? (1pm):
  //     WAKEWORD -> ALEXA -> OFF -> WAKEWORD
  //
  //     Alexa, wikipedia. (What?) Potatoes (...):
  //     WAKEWORD -> ALEXA -> OFF -> ALEXA -> OFF -> WAKEWORD
  OFF = 0,
  WAKEWORD = 1,
  ALEXA = 2,
}
