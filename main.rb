#Main class

class Main 
	iterator = 0.to_i
	queueArray = Array.new
	simulation_Time = 0 #Minute input
	iteration_Time = 0 #Seconds input
end

class Menu (option)
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