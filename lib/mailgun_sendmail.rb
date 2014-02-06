require "mailgun_sendmail/version"
require "rest-client"
require "pit"

module MailgunSendmail
  def self.setup
    Pit.get("mailgun-sendmail", :require => {
      "api_key" => "Your mailgun API Key",
      "domain" => "Your mailgun domain",
    })
  end

  def self.mail(mail_from, mail_to, title, body, attachment=nil)
    config = setup
    api_url  = "https://api:#{config["api_key"]}@api.mailgun.net/v2/#{config["domain"]}/messages"

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
