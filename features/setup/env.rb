require 'selenium-webdriver'
require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara/dsl'

# ======= Setup target environment =======
Capybara.default_host = 'http://www.bbc.co.uk/radiocymru'


# ======== set up browser driver =======
# Capybara browser driver settings
Capybara.default_driver = :selenium
Capybara.default_wait_time = 10


#=== In future, it might be needed to run tests headlessly
#Capybara.default_driver    = :poltergeist

Capybara.javascript_driver = :selenium
Capybara.default_selector = :css

World(RSpec::Matchers)