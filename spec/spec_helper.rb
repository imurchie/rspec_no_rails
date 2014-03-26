require 'rspec/autorun'
require 'capybara/rspec'

Capybara.default_driver = :sauce

RSpec.configure do |config|
  config.order = "random"
  config.include Capybara::DSL
end
require "sauce_helper"
