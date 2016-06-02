# Server notifications with Twilio, Ruby and Sinatra

[![Build Status](https://travis-ci.org/TwilioDevEd/server-notifications-sinatra.svg?branch=master)](https://travis-ci.org/TwilioDevEd/server-notifications-sinatra)

Use Twilio to send SMS alerts so that way you never miss a critical issue.

## Deploy to Heroku

Hit the button!

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Run the application

1. Clone the repository and `cd` into it

   ```bash
   $ git clone git@github.com:TwilioDevEd/server-notifications-sinatra.git
   $ cd  server-notifications-sinatra
   ```

1. Install the application dependencies

    ```bash
    $ bundle install
    ```

1. Export environment variables

    ```bash
    $ export TWILIO_ACCOUNT_SID=your-account-sid
    $ export TWILIO_AUTH_TOKEN=your-auth-token
    $ export TWILIO_NUMBER=your-twilio-number
    ```

  You can find `TWILIO_ACCOUNT_SID` and `TWILIO_AUTH_TOKEN` on your
  [Twilio Account Settings](https://www.twilio.com/user/account/settings).

1. Edit the administrators listed in the [config file](config/administrators.yml). _This will break the app if you don't use real phone numbers!_

1. Start the development server

    ```bash
    $ bundle exec rakeup
    ```

1. Check it out at [`http://localhost:9292`](http://localhost:9292)

That's it!

## Run the tests

1. Run tests

    ```bash
    $ bundle exec rake
    ```

## Meta

* No warranty expressed or implied. Software is as is. Diggity.
* [MIT License](http://www.opensource.org/licenses/mit-license.html)
* Lovingly crafted by Twilio Developer Education.
