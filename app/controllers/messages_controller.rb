class MessagesController < ApplicationController
  def create
    SMSService.new.call(
      body: "Piję #{} w #{} przy temperaturze #{}",
      to: mobile
    )
  end
end
