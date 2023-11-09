namespace py thrift_types.voice
namespace java thrift_types.voice

enum AlexaStatus {
  // This defines the voice recognition state machine
  //
  //     Alexa, what is the time? (1pm):
  //     WAKEWORD -> ALEXA_LISTENING -> ALEXA_THINKING -> ALEXA_SPEAKING -> WAKEWORD
  //
  //     Alexa, wikipedia. (What?) Potatoes (...):
  //     WAKEWORD -> ALEXA_LISTENING -> ALEXA_THINKING -> ALEXA_SPEAKING / ALEXA_NOTIFICATION ->
  //                 ALEXA_LISTENING -> ALEXA_THINKING -> ALEXA_SPEAKING / ALEXA_NOTIFICATION ->
  //                 WAKEWORD
  OFF = 0,
  WAKEWORD = 1,
  ALEXA_LISTENING = 2,
  ALEXA_SPEAKING = 3,
  ALEXA_THINKING = 4,
  ALEXA_ERROR = 5,
  ALEXA_NOTIFICATION = 6,
  ALEXA_DO_NOT_DISTURB = 7,
}

enum RenderTemplateType {
  UNKNOWN = 0,
  BODY_1 = 1,
  BODY_2 = 2,
  LIST_1 = 3,
  WEATHER = 4,
}

enum WeatherType {
  UNKNOWN = 0
  SUNNY = 1,
  CLOUDY = 2,
  RAINY = 3,
  SNOWY = 4,
}

enum SkillAutoEnableStatus {
  UNKNOWN = 0,
  ALREADY_ENABLED = 1,
  SUCCESSFULLY_LINKED = 2,
  ERROR = 3,
}

struct AlexaIconData {
  1: string url
  2: string url_bb // url for black backgrounds
  3: double width_height_ratio
}

struct AlexaWeatherData {
  1: string low_temp
  2: string high_temp
  3: AlexaIconData weather_icon
  4: optional AlexaIconData high_temp_icon
  5: optional AlexaIconData low_temp_icon
  6: optional string current_temp
  7: optional string date
  8: optional string day_of_week
}

struct AlexaListItem {
  1: string left_field
  2: string right_field
}

struct AlexaRenderTemplateData {
  1: RenderTemplateType template_type
  2: optional string title
  3: optional string subtitle
  4: optional string skill_icon_url
  // Maps to textField in body templates and description in weather templates
  5: optional string description
  6: optional string main_image_url
  // Mapping of left text field to right text field for list templates
  7: optional list<AlexaListItem> list_items
  8: optional WeatherType weather_type
  9: optional AlexaWeatherData current_weather
  10: optional list<AlexaWeatherData> weather_forecast
}

struct AlexaAsset {
  1: string asset_id
  2: string url
}

struct AlexaAlert {
  1: string token // opaque alexa alert id
  2: string type // documented values: TIMER, ALARM, REMINDER
  4: i64 scheduled_timestamp
  5: optional map<string, AlexaAsset> assets
  6: optional list<string> asset_play_order // list of asset_ids (may have duplicates)
  7: optional string background_alert_asset // asset_id
  8: optional i32 loop_count // if not specified, loop for 1 hour
  9: optional i32 loop_pause_ms // pause between loops unless 0 or not specified
}

struct AlexaAlerts {
  1: map<string, AlexaAlert> alerts
}

