require 'sinatra/base'
require_relative './lib/notifier'

ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym


module ServerNotifications
  class App < Sinatra::Base
    set :show_exceptions, false
    set :root, File.dirname(__FILE__)

    get '/' do
      raise RuntimeError.new("Kaboom!, Something went wrong!")
    end

    error do |exception|
      Notifier.trigger_sms_alerts(exception)
    end
  end
end
