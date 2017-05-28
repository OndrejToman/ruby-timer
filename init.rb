require_relative 'unwrap/unwrap'
require_relative 'input'
require_relative 'files_manager/files_manager'
require_relative 'settings/settings'
require_relative 'data/data_controller'

# Initialize configuration
config = Settings.new

# Ask user for input
input = Input.new