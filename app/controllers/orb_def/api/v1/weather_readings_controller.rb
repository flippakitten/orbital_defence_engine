module OrbDef
  class Api::V1::WeatherReadingsController < ApplicationController
    def show
      weather_station = WeatherStation.find(params['id'].to_i)
      reading = WeatherData.new(weather_station.latitude, weather_station.longitude).find_or_create_reading_by_station(weather_station)

      render json: reading, status: :ok, serializer: Api::V1::WeatherReadingsSerializer
    end
  end
end

