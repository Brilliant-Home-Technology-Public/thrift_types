namespace py thrift_types.voice
namespace java thrift_types.voice

enum AlexaStatus {
  // This defines the voice recognition state machine
  //
  //     Alexa, what is the time? (1pm):
  //     WAKEWORD -> ALEXA_LISTENING -> ALEXA_THINKING -> ALEXA_SPEAKING -> WAKEWORD
  //
  //     Alexa, wikipedia. (What?) Potatoes (...):
  //     WAKEWORD -> ALEXA_LISTENING -> ALEXA_THINKING -> ALEXA_SPEAKING ->
  //                 ALEXA_LISTENING -> ALEXA_THINKING -> ALEXA_SPEAKING -> WAKEWORD
  OFF = 0,
  WAKEWORD = 1,
  ALEXA_LISTENING = 2,
  ALEXA_SPEAKING = 3,
  ALEXA_THINKING = 4,
  ALEXA_ERROR = 5,
}