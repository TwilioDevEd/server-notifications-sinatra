ENV['RACK_ENV'] = 'test'
require_relative '../app'
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'

Capybara.app = ServerNotifications::App
