class ReceiveTextController < ApplicationController

  skip_before_filter  :verify_authenticity_token

  def index 
    # let's pretend that we've mapped this action to 
    # http://localhost:3000/sms in the routes.rb file
    
    
    message_body = params["Body"]
    from_number = params["From"]
    city        = params["FromCity"]
    state       = params["FromState"]
    country     = params["FromCountry"]
    zip         = params["FromZip"]
   
     currKey= Key.first

     @message = Message.new
     @message.ClientId = currKey.key
     currKey.key = currKey.key + 1
     currKey.save


     @message.Body = message_body
     @message.PhoneNumber = from_number
     @message.City = city
     @message.State = state
     @message.Country = country
     @message.Zip = zip
    

     if @message.save
        send_reply(from_number, "Thank You! Your message was accepted. your Id is " + @message.ClientId.to_s)
     else
        send_reply(from_number, "Problem accured, please try again later.")
     end

     render :nothing => true
  end



  def send_reply (number, message)
      #number_to_send_to = params[:number_to_send_to]
      
   
      twilio_sid = "AC93b3359577d0bde9c4461b67cbf6af37"
      twilio_token = "6cadaf9d20f818c7a11e7405248d5dc1"
      twilio_phone_number = "6463623973"
   
      @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
   
      @twilio_client.account.sms.messages.create(
        :from => "+1#{twilio_phone_number}",
        :to => number,
        :body => message
      )
  end


end
