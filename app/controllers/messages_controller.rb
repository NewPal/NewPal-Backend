class MessagesController < ApplicationController
  def index
  	@messages = Message.all
  end

  private

   def message_params
      params.permit(:body, :State, :Country, :City, :PhoneNumber, :Zip, :ClientId)
    end
end