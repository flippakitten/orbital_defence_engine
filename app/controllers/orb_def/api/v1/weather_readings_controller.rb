module OrbDef
  class Api::V1::WeatherReadingsController < ApplicationController
    def show
      reading = WeatherStation.find(params['id'].to_i).weather_readings.last

      render json: reading, status: :ok, serializer: Api::V1::WeatherReadingsSerializer
    end
  end
end

