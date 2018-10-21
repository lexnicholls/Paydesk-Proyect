#Checkout object
load 'client.rb'
load 'queue.rb'
class Checkout

   def initialize
     client = Client.new()
     @timeOnPaydesk = client.returnTime()
     @status = true
     @checkoutObject = Array.new()
     @checkoutObject = ['|C|', "   "]
   end

   def checkoutName()
     return @checkoutObject[0]
   end

   def setClient(client)
     @checkoutObject[1] = client
   end

   def getClient()
     return @checkoutObject[1]
   end

   def getStatus()
     return @status
   end

   def setChangesStatus()
     if getStatus()
       @status = false
     else
       @status = true
     end
   end
end
