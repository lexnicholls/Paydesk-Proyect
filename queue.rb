#Queue object
load 'client.rb'

class Queue

	def initialize()
		@queue_Client = Array.new
		@total_Time = 0
		getClient(clientsArrival())
	end

	def clientsArrival()
		return rand(0..5)
	end

	def getClient(random)
		@i=0
		while @i<random
		    client = Client.new()
			@queue_Client.push("|" + client.returnClient + "|")
			@i=@i+1
		end
		printClient()
	end

	def printClient()
		puts @queue_Client
  end

end
