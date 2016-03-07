require_relative '../spec_helper'

feature 'Visiting Home' do
  it 'responds with a warning message about an error' do
    allow(Notifier).to receive(:send_sms_notifications)

    visit '/'
    expect(page).to have_content('An error has ocurred')
    expect(Notifier).to have_received(:send_sms_notifications).once
  end
end
