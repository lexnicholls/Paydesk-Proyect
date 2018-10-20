#Checkout object
load 'client.rb'
class Checkout

   client = Client.new()
   def initialize
     @timeOnPaydesk = client.returnTime()
     @status = true
     @checkoutObject = Array.new()
     @checkoutObject = ['|C|', client.returnClient]
   end

   def emptyCheckout()
     return @checkoutObject[0]
   end
   
end
