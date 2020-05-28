FactoryBot.define do
  factory :weather_station, class: OrbDef::WeatherStation do
    name { 'Manono' }
    latitude { -6.94 }
    longitude { 26.96 }
    identifier { 'Manono:AUS' }
  end
end
