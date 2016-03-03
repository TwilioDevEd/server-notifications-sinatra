ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

require 'sinatra'
require_relative './lib/notifier'

set :show_exceptions, false

get '/' do
  raise RuntimeError.new("Kaboom!, Something went wrong!")
end

error do |exception|
  Notifier.trigger_sms_alerts(exception)

  "sinatra error handler"
end
