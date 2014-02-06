# MailgunSendmail

Provide send mail command by Mailgun API

## Installation

Add this line to your application's Gemfile:

    gem 'mailgun_sendmail'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mailgun_sendmail

## Usage

```
$ mailgun_sendmail --setup
edit your Mailgun config
$ mailgun_sendmail
Usage:
  mailgun_sendmail [options] mail_from mail_to title

Options:
       --setup, -s:   Setup Mailgun Account
  --attach, -a <s>:   Attachment file
        --help, -h:   Show this message
```

## Contributing

1. Fork it ( http://github.com/hogelog/mailgun_sendmail/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
