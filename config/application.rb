require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Congross
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.eager_load = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # This used to be in an initializer, but we needed some configs in this
    # file, which is run before the initializers.
    config_file = ERB.new(File.read("#{Rails.root}/config/config.yml")).result
    configuration_hash = YAML.load(config_file)[Rails.env] || {}

    # Proc that takes a filename, and mutates
    # configuration_hash my merging in additional data if file and data exist.
    merge_if_exists = lambda do |filename|
      additional_config_hash = File.exist?(filename) && YAML.load_file(filename)
      configuration_hash.deep_merge!(additional_config_hash) if additional_config_hash
    end

    configatron.configure_from_hash(configuration_hash)

    config.autoload_paths += %W(#{config.root}/services)
  end
end
