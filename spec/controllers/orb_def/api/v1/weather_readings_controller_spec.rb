# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrbDef::Api::V1::WeatherReadingsController, type: :controller do
  routes { OrbDef::Engine.routes }
  #before(:all) do
  #end

  describe 'GET show/:id' do
    let(:weather_station) { create(:weather_station) }
    let(:weather_reading) { create(:weather_reading, weather_station: weather_station) }
    let(:expected_response) do
      {
          id: weather_reading.id.to_s,
          identifier: 'Manono:1590164800',
          weather_station_id: weather_station.id.to_s,
          weather_station_name: 'Manono',
          wind_speed: 5.18.to_s,
          wind_direction: 98.0,
          temperature: '-247.84',
          humidity: 64,
          ground_level: 945.0,
          rain: nil,
          cloud: nil,
          description: 'overcast clouds',
          pressure: 1012.0
      }
    end

    it 'returns serialized temperature' do
      get :show, params: { id: weather_reading.id }
      json = JSON.parse(response.body)

      expect(json['temperature']).to eq('-247.84')
    end

    it 'returns serialized response' do
      get :show, params: { id: weather_reading.id }
      json = JSON.parse(response.body)

      expect(json.symbolize_keys).to eq(expected_response)
    end
  end
end
