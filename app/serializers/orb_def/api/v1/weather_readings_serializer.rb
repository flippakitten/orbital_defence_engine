module OrbDef
  class Api::V1::WeatherReadingsSerializer < ActiveModel::Serializer
    attributes :id,
               :identifier,
               :weather_station_id,
               :weather_station_name,
               :wind_speed,
               :wind_direction,
               :temperature,
               :humidity,
               :ground_level,
               :rain,
               :cloud,
               :description,
               :pressure

    def id
      object.id.to_s
    end

    def weather_station_id
      object.weather_station_id.to_s
    end

    def weather_station_name
      object.identifier.split(':').first
    end

    def wind_speed
      '%.2f' % object.wind_speed
    end

    def temperature
      '%.2f' % object.temperature
    end
  end
end
