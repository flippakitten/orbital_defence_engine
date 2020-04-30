# frozen_string_literal: true

VCR.configure do |config|
  config.cassette_library_dir = File.join(File.dirname(__FILE__), '../', 'vcr', 'cassettes')
  config.hook_into :faraday
  config.configure_rspec_metadata!
  config.filter_sensitive_data("<NASA_API_KEY>") { ENV['NASA_API_KEY'] }
  config.filter_sensitive_data("<OPEN_WEATHER_API_KEY>") { ENV['OPEN_WEATHER_API_KEY'] }
end
