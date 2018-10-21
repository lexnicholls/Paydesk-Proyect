#Queue object
load 'client.rb'

class Queue

    def initialize()
        @queue_Client = Array.new
        @total_Time = 0
    end

    def clientsArrival(file)
        return getClient(rand(0..5),file)
    end

    def returnFirstClient()
      return @queue_Client.first
    end

    def deleteFirstClient()
      @queue_Client.shift
    end

    def getClient(random,file)
        @i=0
        while @i<random
            client = Client.new()
            @queue_Client.push("|" + client.returnClient + "|")
            @i=@i+1
        end
        printClient(file)
    end

    def printClient(files)
        j = 0
        @queue_Client.each do |variable|
          while j < files.to_i/2
            print "   "
            j += 1
          end
          puts variable
          j = 0
          end
        end

    end
