class ReceiveTextController < ApplicationController
  def index 
    # let's pretend that we've mapped this action to 
    # http://localhost:3000/sms in the routes.rb file
    logger.debug("logger Test")
    
    message_body = params["Body"]
    from_number = params["From"]
 
    @body = "body"
    @number = "number"
    
    if message_body 
      @body = message_body
    end 
    
    if from_number
    	@number = message_number
    end

   
     
     @message = Message.new
     @message.message = @body
     @message.save
     Message.create(:message => @body)


    
  end
end
