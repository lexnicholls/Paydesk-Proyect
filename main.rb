#Main class
load 'client.rb'
load 'checkout.rb'
load 'queue.rb'

class Main ()

    def initialize()
        @checkout = Checkout.new()
        @queue = Queue.new()
        iterator = 0.to_i
        @queueArray = []
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
		puts "Input active paydesks."
            multipleQueue(gets)
        else
            puts "The simulator didn't recognize the input."
            initialize()
     end
   end

   def    uniqQueue()
         puts "uniqQueue"
   end

   def multipleQueue(files)
         puts "multipleQueue"
				 i = 0
				 while i < files.to_i
					@checkoutArray.push(@checkout.checkoutName())
					i=i+1
				 end
				 puts
				 print @checkoutArray.join(" ")
			     puts
				 puts
				 puts
				 i = 0
				 while i < files.to_i
					@queueArray.push(@queue.clientsArrival())
					i += 1
				 end
				 #puts a.join("\n")
   end

end

menu = Main.new()
