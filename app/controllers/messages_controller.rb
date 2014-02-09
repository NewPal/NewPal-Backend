class MessagesController < ApplicationController
  def index
  	@messages = Message.all
  end

  private

   def message_params
      params.permit(:message)
    end
end
