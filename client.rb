#Client object
class Client


   def initialize()
    @clientArray = Array.new
	@clientArray = ['A','B','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
    puts returnClients
   end

   def fileCheckout()
    
   end

   def setBuyingTime()
    timeOnPaydesk=rand(4..25)  #time given on minutes    
    return timeOnPaydesk
   end

   def returnClients()
    randomClient = rand(0..24)
    return @clientArray[randomClient]
   end	 
end
