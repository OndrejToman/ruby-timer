require_relative 'unwrap/unwrap'
require_relative 'input'

# Init steps:
# 1. Check if there is config file. If not, ask user to create config
# 2. Check if there is any users. If not, ask user for create one
# 3. Check if user have any projects. If not, store
# times to predefined project (general or no-project), decide later.
# If all steps above are completed, run program.

# Variables:
# In which directory program running
path = Dir.pwd
# Path to config file: settings/config.json

input = Input.new