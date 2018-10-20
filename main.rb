#Main class
load 'client.rb'
load 'checkout.rb'
load 'queue.rb'

class Main ()

	def initialize()
		checkout = Checkout.new()
		iterator = 0.to_i
		@queueArray = Array.new()
		@checkoutArray = Array.new()
		puts "Input simulation time on minutes."
		simulation_Time = gets#Minute input
		puts "Input iteration time on seconds"
		iteration_Time = gets #Seconds input
		puts "Input queue system:"
		puts "1. Unique queue."
		puts "2. Multiple queue."
		Menu(gets)
	end

	def Menu (option)
	  case(option.to_i)
		when 1
			uniqQueue()
		when 2
			multipleQueue()
		else
			puts "The simulator didn't recognize the input."
			initialize()
     end
   end

   def	uniqQueue()
		 puts "uniqQueue"
   end

   def multipleQueue()
		 puts "multipleQueue"
		 @checkoutArray.push(checkout.checkoutName)
		 @queueArray.push(queue.clientsArrival())
		 puts @checkoutArray
		 puts @queueArray
   end

end

menu = Main.new()
