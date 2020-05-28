# frozen_string_literal: true

module OrbDef
  class WeatherData
    attr_reader :latitude, :longitude

    def initialize(latitude, longitude)
      @latitude = latitude
      @longitude = longitude
    end

    def find_or_create_weather
      weather_station = WeatherStation.within(10, origin: [latitude, longitude]).first

      if weather_station.present? && weather_reading_within_limits?(weather_station)
        return weather_station, weather_station.weather_readings.last
      else
        create_station_and_reading
      end
    end

    def create_station_and_reading
      reading_json = OpenWeatherApi::WeatherByCoordinates.fetch(latitude: latitude, longitude: longitude)

      return unless reading_json

      weather_station = WeatherStation.find_or_create(reading_json)
      weather_reading = WeatherReading.find_or_create_by_reading(reading_json, weather_station.id)

      return weather_station, weather_reading
    end

    def weather_reading_within_limits?(weather_station)
      weather_station.weather_readings&.last.reading_at.between?(Time.now - 20.minutes, Time.now)
    end
  end
end
