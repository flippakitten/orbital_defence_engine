class CreateOrbDefWeatherStations < ActiveRecord::Migration[5.2]
  def change
    create_table :orb_def_weather_stations do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :identifier, index: true, uniqueness: true

      t.timestamps
    end
  end
end
