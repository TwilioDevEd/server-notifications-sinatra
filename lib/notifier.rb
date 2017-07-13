require 'yaml'
require 'twilio-ruby'

class Notifier
  def self.send_sms_notifications(e)
    new.send_sms_notifications(e)
  end

  def initialize
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token  = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def send_sms_notifications(e)
    alert_message = '[This is a test] ALERT!' \
      'It appears the server is having issues.' \
      "Exception: #{e}." \
      'Go to: http://newrelic.com for more details.'
    image_url = 'http://howtodocs.s3.amazonaws.com/new-relic-monitor.png'

    admins = YAML.load_file('config/administrators.yml')
    admins.each do |admin|
      phone_number = admin['phone_number']
      send_sms(phone_number, alert_message, image_url)
    end
  end

  private

  def send_sms(phone_number, alert_message, image_url)
    @client.messages.create(
      from:      ENV['TWILIO_NUMBER'],
      to:        phone_number,
      body:      alert_message,
      media_url: image_url
    )
  end
end
