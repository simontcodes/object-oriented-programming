class Paperboy
    def initialize(name, side)
      @name = name
      @quota = 50
      @experience = 0
      @side = side
      @earnings = 0
    end
    #how to calculate the quota
    def quota
      @quota = @quota + (@experience / 2) + 50
    end
    #start address & end address
    def deliver(start_address, end_address)
        if start_address % 2 == 0
          @side = 'even'
        else
          @side = 'odd'
        end
        quota
      number_of_houses = (end_address - start_address) / 2
        if number_of_houses <= @quota
          @earnings = @earnings + (number_of_houses * 0.25 )
        end
        if number_of_houses > @quota
          @earnings = @earnings + (number_of_houses * 0.50)
        end
        @experience = @experience + (number_of_houses / 2)
        #simon.quota
    end
    def report
    puts "i am #{@name}, i have delivered #{@experience} and ive earned #{@earnings} so far"
    end
end

simon = Paperboy.new('simon', 'even')
simon.deliver(100, 220)
simon.report
