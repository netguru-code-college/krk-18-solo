require 'twilio-ruby'

class SMSService
  def initialize(twilio_client: Twilio::REST::Client.new(Rails.application.credentials.twilio_account_sid, Rails.application.credentials.twilio_auth_token))
    @twilio_client = twilio_client
  end

  def call(body:, to:)
    send_sms(body, to)
  end

  private

  attr_reader :twilio_client

  def send_sms(body, to)
    twilio_client.messages.create(
      from: Settings.twilio_number,
      to: to,
      body: body,
    )
  end
end
