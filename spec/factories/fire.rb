FactoryBot.define do
  factory :fire, class: OrbDef::Fire do
    latitude { -7.70527 }
    longitude { 28.51613 }
    detection_type_id { 1 }
    brightness { nil}
    bright_t31 { nil }
    bright_ti5 { 294.3 }
    bright_ti4 { 330.6 }
    scan { 0.43 }
    track { 0.62 }
    frp { 10.5 }
    distance { nil }
    scan_type { 'virrs' }
    identifier { 'e2acc3a7bc7da75d1ef80955ea6b860dfd23ae4831379367079f811c9ecab2a8' }
    lat_long { '-7.70527,28.51613' }
    satellite { 'N' }
    confidence { "nominal" }
    version { "1.0NRT" }
    day_night { nil }
    detected_at_weather_reading_id { 36988 }
    detected_at { "2020-05-27 10:54:00" }
  end
end
