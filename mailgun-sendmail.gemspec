# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mailgun_sendmail/version'

Gem::Specification.new do |spec|
  spec.name          = "mailgun_sendmail"
  spec.version       = MailgunSendmail::VERSION
  spec.authors       = ["hogelog"]
  spec.email         = ["konbu.komuro@gmail.com"]
  spec.summary       = %q{sendmail by Mailgun API}
  spec.description   = %q{Provide send mail command by Mailgun API}
  spec.homepage      = "https://github.com/hogelog/mailgun_sendmail"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "pit"
  spec.add_dependency "rest-client"
  spec.add_dependency "trollop"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
