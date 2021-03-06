require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TestInternetSistemas
  class Application < Rails::Application
    # Use the responders controller from the responders gem
    config.app_generators.scaffold_controller :responders_controller
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = 'pt-BR'

            # Start: Add this block
    config.generators do |g|
        g.test_framework :rspec, :fixture => true
        g.fixture_replacement :factory_girl, :dir => "spec/factories"
        g.view_specs false
        g.helpers_spec false
        g.stylesheets = false
        g.javascripts = false
        g.helper = false
    end
        # Stop: Add this block

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
