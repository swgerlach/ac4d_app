# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Ac4dApp::Application.initialize!

config.gem "newrelic_rpm"