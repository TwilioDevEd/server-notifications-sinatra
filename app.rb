require 'dotenv'
require 'sinatra'
require_relative './lib/notifier'

# Load environment configuration
Dotenv.load

# Set the environment after dotenv loads
# Default to production
environment = (ENV['APP_ENV'] || ENV['RACK_ENV'] || :production).to_sym
set :environment, environment

require 'bundler'
Bundler.require :default, environment


module ServerNotifications
  class App < Sinatra::Base
    set :show_exceptions, false
    set :raise_errors, false
    set :root, File.dirname(__FILE__)

    get '/' do
      raise "Kaboom! Something went wrong!"
    end

    error do |exception|
      Notifier.send_sms_notifications(exception)
      'An error has ocurred'
    end
  end
end
