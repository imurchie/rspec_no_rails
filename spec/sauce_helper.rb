# You should edit this file with the browsers you wish to use
# For options, check out http://saucelabs.com/docs/platforms
require "sauce"
require "sauce/capybara"
require 'capybara/rspec'

Capybara.run_server = false
Capybara.register_driver(:selenium){ |app| Capybara::Selenium::Driver.new(app, { :browser => :chrome }) }
Capybara.server_port = 80
Capybara.javascript_driver = :sauce
Capybara.default_driver = :sauce

Sauce.config do |config|
  config[:start_tunnel] = true
  config[:browsers] = [
    ["Windows 8", "Internet Explorer", "10"],
    # ["Windows 7", "Firefox", "20"]
  ]
end
