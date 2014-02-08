require "mailgun-sendmail/version"
require "rest-client"
require "pit"

module Mailgun
  class Sendmail
    def self.setup
      Pit.get("mailgun-sendmail", :require => {
        "api_key" => "Your mailgun API Key",
        "domain" => "Your mailgun domain",
      })
    end

    def self.mail(*args)
      config = setup
      sendmail = Sendmail.new(config['api_key'], config['domain'])
      sendmail.mail(*args)
    end

    def initialize(api_key, domain)
      @api_key = api_key
      @domain = domain
    end

    def mail(mail_from, mail_to, title, body, attachment=nil)
      api_url  = "https://api:#@api_key@api.mailgun.net/v2/#@domain/messages"

      options = {
        :from => mail_from,
        :to => mail_to,
        :subject => title,
        :text => body,
      }
      options[:attachment] = File.new(attachment, "rb") if attachment

      RestClient.post(api_url, options)
    end
  end
end
