#Checkout object
load 'client.rb'
class Checkout

   def initialize
     @timeOnPaydesk = 0
     @activeCheckout = 0
     @status = true
     client = Client.new()
     @checkoutObject = Array.new()
     @checkoutObject = ['|C|', client.returnClient]
   end

   def assignClientOnCheckout()
     @timeOnPaydesk = client.returnTime()
   end

end
