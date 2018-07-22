class MessagesController < ApplicationController
  def create
    SMSService.new.call(
      body: "Piję #{params[:notify][:alcohol]} w #{params[:notify][:city]} przy temperaturze #{params[:notify][:temperature]} stopni",
      to: params[:notify][:phone_number]
    )
  end
end
