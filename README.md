[![CircleCI](https://circleci.com/gh/flippakitten/orbital_defence_engine/tree/master.svg?style=svg)](https://circleci.com/gh/flippakitten/orbital_defence_engine/tree/master)

# Orbital Defence Engine
Making [NASA FIRMS](https://nrt4.modaps.eosdis.nasa.gov/) data queryable by geo-location and augmenting it with [Open Weather API](https://openweathermap.org) data

[Orbital Defence Demo](https://github.com/flippakitten/orbital_defence_demo)

## Getting Started
Grab a OpenWeatherMap API key [here](https://openweathermap.org/appid)  
Grab a Nasa EarthData Api Key [here](https://nrt4.modaps.eosdis.nasa.gov/help/downloads#appkeys)  
The Engine has a dependancy on [pagy](https://github.com/ddnexus/pagy) for pagination 
and [geokit-rails](https://github.com/geokit/geokit-rails) for geo based queries.
The initializer files will be created during installation only if they do not exist.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'orb_def'
```

And then execute:
```bash
$ bundle
```

Generate the installation files:
This will create the orb_def, pagy and geokit initializers, install migrations and mount the app to '/' 
```bash
$ rails generate orb_def:install
```

Run migrations:
```bash
$ rails db:migrate
```

Populate the DB with required seed information:
```bash
$ rails orb_def:seed_db
```

## Contributing
Fell free to contribute by opening cloning the repo and opening a PR.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
