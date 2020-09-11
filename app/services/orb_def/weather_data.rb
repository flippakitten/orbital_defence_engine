# frozen_string_literal: true

module OrbDef
  class WeatherData
    attr_reader :latitude, :longitude

    def initialize(latitude, longitude)
      @latitude = latitude
      @longitude = longitude
    end

    def find_or_create
      station = WeatherStation.within(10, origin: [latitude, longitude]).first

      if station.present? && weather_reading_within_limits?(station.weather_readings&.last)
        return station, station.weather_readings.last
      else
        create_station_and_reading
      end
    end

    def find_or_create_reading_by_station(station)
      reading = station.weather_readings&.last
      return reading if  weather_reading_within_limits?(reading)

      weather_reading
    end

    def weather_station
      @weather_station ||= WeatherStation.find_or_create(open_weather_reading)
    end

    def weather_reading
      @weather_reading ||= WeatherReading.find_or_create_by_reading(open_weather_reading, weather_station.id)
    end

    def create_station_and_reading
      return unless open_weather_reading

      return weather_station, weather_reading
    end

    def open_weather_reading
      @weather_reading ||= OpenWeatherApi::WeatherByCoordinates.fetch(latitude: latitude, longitude: longitude)
    end

    def weather_reading_within_limits?(weather_reading)
      return false unless weather_reading

      weather_reading.reading_at.between?(Time.now - 20.minutes, Time.now)
    end
  end
end
