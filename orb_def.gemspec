$:.push File.expand_path("lib", __dir__)

require "orb_def/version"

Gem::Specification.new do |spec|
  spec.name        = "orb_def"
  spec.version     = OrbDef::VERSION
  spec.authors     = ["James Gascoigne-Taylor"]
  spec.email       = ["james@flippakitten.com"]
  spec.homepage    = "https://github.com/flippakitten/orbital_defence_engine"
  spec.summary     = "Query Nasa FIRMS data and Open Weather API data by geolocation"
  spec.description = "Fetches and persists Nasa FIRMS (Fires) and Open Weather API data by geolocation"
  spec.license     = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.test_files    = Dir["spec/**/*"]

  spec.add_dependency 'rails', '>= 5.2'
  spec.add_dependency 'pagy', '~> 3.7', '>= 3.7.5'
  spec.add_dependency 'geokit-rails', '~> 2.3', '>= 2.3.1'
  spec.add_dependency 'faraday'
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
