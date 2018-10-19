#Client object
class Client


   def initialize()
     @clientArray = Array.new
	   @clientArray = ['A','B','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
     @clientTime = setBuyingTime
     @clientObject = [generateClient, clientTime]
   end

   ##def queueCheckoutMethod

   def setBuyingTime
    timeOnPaydesk=rand(4..25)  #time given on minutes
    timeOnPaydesk
   end

   def generateClient
    randomClient = rand(0..24)
    clientName = @clientArray[randomClient]
   end

   puts clientObject
   gets()

end
