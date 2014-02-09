class MessagesController < ApplicationController

  skip_before_filter :verify_authenticity_token
  after_filter :set_access_control_headers

  def index
  	state     = params[:state]
  	if state
  		@messages = Message.where(State: state).to_a
  	else	
		@messages = Message.all
	end

  	render json: @messages
  end

  def bodies
  	@messages = Message.all
  end

# This is used to allow the cross origin POST requests made by confroom kiosk app.
  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = "*"
    headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
  end


  private

   def message_params
      params.permit(:body, :State, :Country, :City, :PhoneNumber, :Zip, :ClientId)
    end
end
