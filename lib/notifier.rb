require 'yaml'
require 'twilio-ruby'

module Notifier
  def self.trigger_sms_alerts(e)
    alert_message = "[This is a test] ALERT!"\
      "It appears the server is having issues."\
      "Exception: #{e}."\
      "Go to: http://newrelic.com for more details."
    image_url = "http://howtodocs.s3.amazonaws.com/new-relic-monitor.png"
    client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']

    admin_list = YAML.load_file('config/administrators.yml')
    admin_list.each do |admin|
      phone_number = admin['phone_number']
      send_message(client, phone_number, alert_message, image_url)
    end
  end

  def self.send_message(client, phone_number, alert_message, image_url)
    twilio_number = ENV['TWILIO_NUMBER']
    puts phone_number
    message = client.account.messages.create(
      :from => twilio_number,
      :to => phone_number,
      :body => alert_message,
      # US phone numbers can make use of an image as well.
      # :media_url => image_url
    )
    puts message.to
  end

  private_class_method :send_message
end
