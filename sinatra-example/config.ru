require 'yaml'
require_relative 'app'

current_dir = File.dirname(File.expand_path(__FILE__))
config_dir = File.join(current_dir, 'config')

# load all the YAML config files in the config/ directory
CONFIG = {}
Dir["#{config_dir}/*.yml"].each do |file_path|
  file_name = file_path.split('/').last
  file_key = file_name.split('.').first.to_sym
  CONFIG[file_key] = YAML.load_file(file_path)
end

# start the app and listen for requests
run SinatraApp
