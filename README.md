# Server notifications with Twilio, Ruby and Sinatra

[![Build Status](https://travis-ci.org/TwilioDevEd/server-notifications-sinatra.svg?branch=master)](https://travis-ci.org/TwilioDevEd/server-notifications-sinatra)

Use Twilio to send SMS alerts so that way you never miss a critical issue.

## Run the application

1. Clone the repository and `cd` into it.

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

  You can find `TWILIO_ACCOUNT_SID` and `TWILIO_AUTH_TOKEN` in your
  [Twilio Account Settings](https://www.twilio.com/user/account/settings).

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

<a href="http://twilio.com/signal">![](https://s3.amazonaws.com/baugues/signal-logo.png)</a>

Join us in San Francisco May 24-25th to [learn best practices from the engineers who create the Twilio stack](https://www.twilio.com/signal).
