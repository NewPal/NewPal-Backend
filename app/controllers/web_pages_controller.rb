class WebPagesController < ApplicationController
  def home


  end

  def about
  end

  def data
    @freqs = Hash.new(0) 

  	@messages = Message.pluck(:Body)

  	@messages.each { |text| 
  					   words = text.split(/[^a-zA-Z]/)
  		               words.each {|word| @freqs[word]+= 1 }  
  		            }

     logger.info("freqs: " + @freqs.to_s)
  end

  
end
