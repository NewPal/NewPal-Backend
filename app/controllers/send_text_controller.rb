class SendTextController < ApplicationController
      def index
	  end
	 
	  def send_text_message
	    #number_to_send_to = params[:number_to_send_to]
	    number_to_send_to = "3478190642"
	 
	    twilio_sid = "AC93b3359577d0bde9c4461b67cbf6af37"
	    twilio_token = "6cadaf9d20f818c7a11e7405248d5dc1"
	    twilio_phone_number = "6463623973"
	 
	    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
	 
	    @twilio_client.account.sms.messages.create(
	      :from => "+1#{twilio_phone_number}",
	      :to => number_to_send_to,
	      :body => "This is an message. It gets sent to #{number_to_send_to}"
	    )
	  end
end
