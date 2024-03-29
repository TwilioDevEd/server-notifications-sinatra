<a href="https://www.twilio.com">
  <img src="https://static0.twilio.com/marketing/bundles/marketing/img/logos/wordmark-red.svg" alt="Twilio" width="250" />
</a>

# Server notifications with Twilio, Ruby and Sinatra

[![Build and test](https://github.com/TwilioDevEd/server-notifications-sinatra/actions/workflows/build_test.yml/badge.svg)](https://github.com/TwilioDevEd/server-notifications-sinatra/actions/workflows/build_test.yml)

SMS notifications are a great way to alert humans quickly when important events
happen. In this example, we'll show you how to send SMS notifications to a list
of people when an error happens in a web application.

[Read the full tutorial here!](https://www.twilio.com/docs/tutorials/walkthrough/server-notifications/ruby/sinatra)

## Get started

This project is built using [Sinatra](http://www.sinatrarb.com/) Framework.

1. First clone this repository and `cd` into it.

   ```bash
   git clone git@github.com:TwilioDevEd/server-notifications-sinatra.git
   cd  server-notifications-sinatra
   ```

1. Install the dependencies.

   ```bash
   bundle install
   ```

1. Copy the `.env.example` file to `.env`, and edit it including your credentials
   for the Twilio API (found at https://www.twilio.com/console/account/settings).
   You will also need a [Twilio Number](https://www.twilio.com/console/phone-numbers/incoming).

1. Edit the administrators listed in the [`config/administrators.yml`](config/administrators.yml).
   Make sure to use real phone numbers otherwise the application won't work.

1. Make sure the tests succeed.

   ```bash
   bundle exec rake
   ```

1. Start the development server:

   ```bash
   bundle exec rakeup
   ```

1. Check it out at [`http://localhost:9292`](http://localhost:9292).

### Configure Development vs Production Settings

By default, this application will run in production mode - stack traces will not be visible in the web browser. If you would like to run this application in development locally, change the `APP_ENV` variable in your `.env` file.

`APP_ENV=development`

For more about development vs production, visit [Sinatra's configuration page](http://sinatrarb.com/configuration.html).

## Meta

* No warranty expressed or implied.  Software is as is. Diggity.
* [MIT License](http://www.opensource.org/licenses/mit-license.html)
* Lovingly crafted by Twilio Developer Education.
