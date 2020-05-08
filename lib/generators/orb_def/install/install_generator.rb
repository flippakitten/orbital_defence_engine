module OrbDef
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a Orbital Defence Engine initializer and copys template files to your application."

      def copy_initializer
        template "orb_def.rb", "config/initializers/orb_def.rb", skip: true
        template "pagy.rb", "config/initializers/pagy.rb", skip: true
        template "geokit_config.rb", "config/initializers/geokit_config.rb", skip: true
      end

      desc "Copies migrations to your application."
      def copy_migrations
        rake("orb_def:install:migrations")
      end

      desc "Mount the Engine."
      def mount_engine
        route("mount OrbDef::Engine, at: '/'")
      end
    end
  end
end