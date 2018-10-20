#Queue object
Load 'client.rb'

class Queue

	def initialize()
		@queue_Client = Array.new
		@total_Time = 0

	end

	def clientsArrival()
		arrivingClients = rand(0..5)
	end

	def getClient()
			@queue_Client.push(Client.new())
	end

	def printClient()
		puts "|"+@queue_Client+"|"
  end

end
