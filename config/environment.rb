# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.3' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')
require 'yaml' 

config_file_path = File.join(RAILS_ROOT, *%w(config settings.yml))
if File.exist?(config_file_path)
  config = YAML.load_file(config_file_path)
  APP_CONFIG = config.has_key?(RAILS_ENV) ? config[RAILS_ENV] : {}
else
  puts "WARNING: configuration file #{config_file_path} not found." 
  APP_CONFIG = {}
end

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'
  config.gem 'haml', :version => '2.2.8'
  config.gem 'compass', :version => '0.8.17'
  config.gem 'compass-susy-plugin', :lib => false, :version => '0.6.3'
  config.gem 'typus', :version => '0.9.39', :source => 'http://gemcutter.org'
  config.gem 'www-delicious', :lib => 'www/delicious'
  config.gem 'twitter'
  config.gem 'formtastic'
  config.gem 'friendly_id', :version => '2.2.4'
  config.gem 'RedCloth'
  config.gem 'thinking-sphinx', :lib => 'thinking_sphinx/0.9.8', :version => '1.3.7'
  config.i18n.default_locale = :es

end
