require "orb_def/engine"

module OrbDef
  class << self
    mattr_accessor :nasa_api_key, :open_weather_api_key
    self.nasa_api_key = "NASA API KEY"
    self.open_weather_api_key = "OPEN WEATHER API API KEY"

    # add default values of more config vars here
  end

  # this function maps the vars from your app into your engine
  def self.setup(&block)
    yield self
  end
end
