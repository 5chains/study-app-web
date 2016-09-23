require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StudyAppWeb
  class Application < Rails::Application
  	config.action_controller.permit_all_parameters = true
    config.action_controller.action_on_unpermitted_parameters = :raise
    config.action_controller.action_on_unpermitted_parameters = :log


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
  end
end
