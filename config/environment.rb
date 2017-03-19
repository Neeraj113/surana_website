# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]

Rails.application.initialize!
