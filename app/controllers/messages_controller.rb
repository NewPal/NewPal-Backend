class MessagesController < ApplicationController

  skip_before_filter :verify_authenticity_token
  after_filter :set_access_control_headers
  respond_to :json

  def index
    if (params.length > 3)
      logger.info ("first: " + params.to_s)
    	state       = params[:state]
      phoneNumber = params[:phone]

      messages = [] 
       

    	if state
    		messages = messages + Message.where(State: state).to_a
    	end

      if phoneNumber
        messages << Message.where(State: state).to_a
      end

    else #No Json Params
       logger.info ("second: " + params.to_s)
       messages = Message.all
    end
    
    
    respond_with(messages.sort_by {|obj| obj.updated_at})
   	#render json: @messages.sort_by {|obj| obj.updated_at}
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
