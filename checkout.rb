#Checkout object
load 'client.rb'
class Checkout

   def initialize
     client = Client.new()
     @timeOnPaydesk = client.returnTime()
     @status = true
     @checkoutObject = Array.new()
     @checkoutObject = ['|C|', client.returnClient]
   end

   def checkoutName()
     return @checkoutObject[0]
   end

end
