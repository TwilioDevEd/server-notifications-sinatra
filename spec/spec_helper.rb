ENV['RACK_ENV'] = 'test'
require_relative '../app'
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'

Capybara.app = ServerNotifications::App


# require 'rack/test'
# require 'rspec'
#
# ENV['RACK_ENV'] = 'test'
#
# require File.expand_path '../../app.rb', __FILE__
#
# module RSpecMixin
#   include Rack::Test::Methods
#
#   def app()
#     ServerNotifications::App
#   end
# end
#
# # For RSpec 2.x and 3.x
# RSpec.configure { |c| c.include RSpecMixin }
