require 'sinatra/base'
require_relative './lib/notifier'

ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

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
