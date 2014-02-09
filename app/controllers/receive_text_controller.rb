class ReceiveTextController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index 
    # let's pretend that we've mapped this action to 
    # http://localhost:3000/sms in the routes.rb file
    logger.debug("logger Test")
    
    message_body = params["Body"]
    from_number = params["From"]
    city        = params["FromCity"]

    logger.info("My Log: " + message_body)
   
     
     @message = Message.new
     @message.body = message_body
     @message.Number = from_number
     @message.City = city
    

     @message.save

     render :nothing => true
    


    
  end
end
