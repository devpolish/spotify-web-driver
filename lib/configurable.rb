# This file load all configurations to enable our API
# Load our secrets credentials and other options
# If you want to use this file you could create a credentials.yml file at /config folder
# Example of *credentials.yml*
# ----------
# spotify:
#   client_id: CLIENT_ID
#   api_key: API_KEY

require 'selenium-webdriver'
require 'yaml'
CONFIG = YAML.load_file('config/credentials.yml')
