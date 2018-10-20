#Main class

class Main ()

	def initialize()
		iterator = 0.to_i
		queueArray = Array.new
		simulation_Time = gets#Minute input
		iteration_Time = gets #Seconds input
	end

	def Menu (option)
	  case(option)
		when 1:
			uniqQueue()
			break
		when 2:
			multipleQueue()
			break
		else
			puts "the program don´t reconoce the name"
     end
   end

   def	uniqQueue()

   end

   def multipleQueue()
   end


end
