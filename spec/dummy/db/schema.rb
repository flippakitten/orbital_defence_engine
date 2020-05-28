# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_28_063630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orb_def_detection_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orb_def_fires", force: :cascade do |t|
    t.bigint "weather_station_id"
    t.bigint "weather_reading_id"
    t.bigint "detection_type_id"
    t.float "latitude"
    t.float "longitude"
    t.float "brightness"
    t.float "bright_t31"
    t.float "bright_ti5"
    t.float "bright_ti4"
    t.float "scan"
    t.float "track"
    t.float "frp"
    t.integer "distance"
    t.string "scan_type"
    t.string "identifier"
    t.string "lat_long"
    t.string "satellite"
    t.string "confidence"
    t.string "version"
    t.string "day_night"
    t.bigint "detected_at_weather_reading_id"
    t.datetime "detected_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detected_at"], name: "index_orb_def_fires_on_detected_at"
    t.index ["detection_type_id"], name: "index_orb_def_fires_on_detection_type_id"
    t.index ["identifier"], name: "index_orb_def_fires_on_identifier"
    t.index ["lat_long"], name: "index_orb_def_fires_on_lat_long"
    t.index ["latitude"], name: "index_orb_def_fires_on_latitude"
    t.index ["longitude"], name: "index_orb_def_fires_on_longitude"
    t.index ["weather_reading_id"], name: "index_orb_def_fires_on_weather_reading_id"
    t.index ["weather_station_id"], name: "index_orb_def_fires_on_weather_station_id"
  end

  create_table "orb_def_weather_readings", force: :cascade do |t|
    t.bigint "weather_station_id"
    t.string "identifier"
    t.float "temperature"
    t.float "pressure"
    t.float "ground_level"
    t.integer "humidity"
    t.float "wind_speed"
    t.float "wind_direction"
    t.float "rain"
    t.integer "cloud"
    t.string "description"
    t.datetime "reading_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identifier"], name: "index_orb_def_weather_readings_on_identifier"
    t.index ["weather_station_id"], name: "index_orb_def_weather_readings_on_weather_station_id"
  end

  create_table "orb_def_weather_stations", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identifier"], name: "index_orb_def_weather_stations_on_identifier"
  end

end
