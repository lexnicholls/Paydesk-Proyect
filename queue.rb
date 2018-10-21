#Queue object
load 'client.rb'

class Queue

    def initialize()
        @queue_Client = Array.new
        @queue_Time = Array.new
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

    def returnTime()
      return @queue_Time.first
    end

    def deleteFirstTime()
      @queue_Time.shift
    end

    def getClient(random,file)
        @i=0
        while @i<random
            client = Client.new()
            @queue_Client.push("|" + client.returnClient + "|")
            @queue_Time.push(client.returnTime)
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
