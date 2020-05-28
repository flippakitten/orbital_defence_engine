FactoryBot.define do
  factory :weather_reading, class: OrbDef::WeatherReading do
    temperature { 25.310000000000002 }
    identifier { 'Manono:1590164800' }
    pressure { 1012.0 }
    ground_level { 945.0 }
    humidity { 64 }
    wind_speed { 5.184 }
    wind_direction { 98.0 }
    rain { nil }
    cloud { nil }
    description { 'overcast clouds' }
    reading_at { '2020-05-22 16:26:40' }
  end
end
