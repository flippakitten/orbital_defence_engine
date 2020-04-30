$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "orb_def/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "orb_def"
  spec.version     = OrbDef::VERSION
  spec.authors     = ["James Gascoigne-Taylor"]
  spec.email       = ["james@flippakitten.com"]
  spec.homepage    = "https://github.com/flippakitten/orbital_defence_engine"
  spec.summary     = "Fire and weather data you can query by geolocation"
  spec.description = "Uses Nasa FIRMS data and OpenWeatherApi data"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.test_files = Dir["spec/**/*"]

  spec.add_dependency 'rails', '~> 5.2.4', '>= 5.2.4.2'
  spec.add_dependency 'pagy', '~> 3.7', '>= 3.7.5'
  spec.add_dependency 'geokit-rails', '~> 2.3', '>= 2.3.1'
  spec.add_dependency 'faraday', '~> 0.15.3'
  spec.add_dependency 'active_model_serializers'

  spec.add_development_dependency 'pg'
  spec.add_development_dependency 'rspec-rails', '~> 3.9.0'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'factory_bot_rails', '>= 5.1.1'
  spec.add_development_dependency 'shoulda-matchers', '~> 3.1'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'rspec-sidekiq'
  spec.add_development_dependency 'timecop', '~> 0.9.1'
end
