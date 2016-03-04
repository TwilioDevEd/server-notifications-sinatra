require_relative '../spec_helper'

feature 'Visiting Home' do
  it 'responds with a warning message about an error' do
    allow(Notifier).to receive(:trigger_sms_alerts)

    visit '/'
    expect(page).to have_content('An error has ocurred')
    expect(Notifier).to have_received(:trigger_sms_alerts)
  end
end
