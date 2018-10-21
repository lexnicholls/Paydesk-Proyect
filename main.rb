#Main class
load 'client.rb'
load 'checkout.rb'
load 'queue.rb'

class Main ()

    def initialize()
        @iterator = 0.to_i
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
          	puts "Input numeric value for active paydesks."
            value = gets
            initializeArraysUniq(value)
            uniqQueue(value)
        when 2
		        puts "Input numeric value for active paydesks."
            value = gets
            initializeArraysMultiple(value)
            multipleQueue(value)
        else
            puts "The simulator didn't recognize the input."
            initialize()
     end
   end

   def uniqQueue(files)
     j = 0
     while j < files.to_i
       i = 0
       while i < files.to_i
         print @checkoutArray[i].checkoutName()
         @checkoutArray[i].setCheckboxNumber(i)
         i += 1
       end
         puts
         printInFrontTheBox()
         puts

         puts
         @queueArray[0].clientsArrival(files)
                 verifyCheckbox(files)
                 actualizeClientTime()
        j += 1
     end
   end

   def actualizeClientTime()
     @checkoutArray.each do |b|
       b.setClientTime(b.getClientTime - 1)
     end

   end

   def modifyStatusCheckbox()
     @checkoutArray.each do |b|
       if b.getClientTime() = 0
         b.setChangesStatus()
       end
     end
   end

   def printInFrontTheBox()
     @checkoutArray.each do |b|
        puts " #{b.getClient()} "
     end
   end

   def initializeArraysMultiple(value)
     for i in (0..value)
       @queueArray<< queue.new
     end
     for i in (0..value)
       @checkoutArray<< checkout.new
     end
   end

   def initializeArraysUniq(value)
     @queueArray<< Queue.new()

     for i in (0..value.to_i)
       @checkoutArray.push(Checkout.new())
     end
   end

   def verifyCheckbox(files)
     i=0
     while i < files.to_i
       if (@checkoutArray[i].getStatus())
         if (@checkoutArray.length > 0 & @checkoutArray[i].returnTime == 0 )
           @checkoutArray[1].setClient(@queueArray[i].returnFirstClient())
           @checkoutArray[1].setClientTime(@queueArray[i].returnTime())
           @queueArray[i].deleteFirstTime()
           @queueArray[i].deleteFirstClient()
           @checkoutArray[1].setChangesStatus()
           i -= 1
         end
       end
       i+=1
     end
   end

   def multipleQueue(files)
         puts "multipleQueue"
				 #puts a.join("\n")
   end

end

menu = Main.new()
gets
