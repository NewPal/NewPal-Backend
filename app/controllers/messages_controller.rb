class MessagesController < ApplicationController
  def index
  	@messages = Message.all
  	render json: @messages
  end

  def bodies
  	@messages = Message.all
  end



  private

   def message_params
      params.permit(:body, :State, :Country, :City, :PhoneNumber, :Zip, :ClientId)
    end
end
