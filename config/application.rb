require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsActivejobExample
  class Application < Rails::Application
    # Enable/disable these lines to switch the ActiveJob backend
    # Only one backend at a time can be enabled
    config.active_job.queue_adapter = :sidekiq
    #config.active_job.queue_adapter = :delayed_job
    #config.active_job.queue_adapter = :resque
  end
end
