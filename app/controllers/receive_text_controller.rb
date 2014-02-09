class ReceiveTextController < ApplicationController
  def index 
    # let's pretend that we've mapped this action to 
    # http://localhost:3000/sms in the routes.rb file
    
    message_body = params["Body"]
    from_number = params["From"]
 
    if message_body 
      @body = message_body
    end 
    
    if from_number
    	@number = message_number
    end
      @body = "body"
      @number = "number"

  end
end
