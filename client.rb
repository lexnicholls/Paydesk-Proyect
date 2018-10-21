#Client object
class Client

   def initialize
     @clientArray = Array.new()
	   @clientArray = ['A','B','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
     @clientObject = Array.new()
     @clientObject = [generateClient, rand(4..25)]
   end

   ##def queueCheckoutMethod

   def generateClient
    randomClient = rand(0..24)
    clientName = @clientArray[randomClient]
	  return clientName
   end

   def returnClient
     return @clientObject[0]
   end

   def returnTime
     return @clientObject[1]
   end
end
