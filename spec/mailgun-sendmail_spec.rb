require "spec_helper"

describe Mailgun::Sendmail do
  describe "#mail" do
    let(:sendmail) { Mailgun::Sendmail.new('api_key', 'domain') }
    let(:api_url) { "https://api:api_key@api.mailgun.net/v2/domain/messages" }
    it "posts /messages api" do
      WebMock.stub_request(:post, api_url)
      sendmail.mail('from@example.com', 'to@example.com', 'title', 'message')
      expect(WebMock).to have_requested(:post, api_url)
    end
  end
end
