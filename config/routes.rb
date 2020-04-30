OrbDef::Engine.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :fires, only: :index do
        collection do
          get '/windIndicators', to: 'fires#fires_current_wind_direction_indicator'
          get '/search',  to: 'fires#search'
        end
      end
      resources :weather_readings, only: :show
    end
  end
end
