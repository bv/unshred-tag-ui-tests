require 'capybara'
require 'capybara/cucumber'
require 'rspec/expectations'

module DefaultSelenium
  Capybara.default_driver = :selenium
end

World(DefaultSelenium)
