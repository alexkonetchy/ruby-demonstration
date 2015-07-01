class Temperature
    #Method: initialize
    #Author: Alex Konetchy
    #Initialized the temp and the type of temp based on whats given
    #Since the temp can only be one type I used an if else statement
    def initialize(temp)
        if temp.has_key?(:f)
            @temp = temp[:f]
            @type = :f
        elsif temp.has_key?(:c)
            @temp = temp[:c]
            @type = :c
        end
    end
    
    #Method: from_fahrenheit
    #Author: Alex Konetchy
    #Factory method for fahrenheit
    def self.from_fahrenheit(temp)
        self.new(:f => temp)
    end
    
    #Method: from_celsius
    #Author: Alex Konetchy
    #Factory method for celsius
    def self.from_celsius(temp)
        self.new(:c => temp)
    end
    
    #Method: in_fahrenheit
    #Author: Alex Konetchy
    #Returns the correct fahrenheit temperature
    def in_fahrenheit
        if @type == :f
            @temp
        else
            ((@temp.to_f * 9.0)/5.0) + 32.0
        end
    end
    
    #Method: in_celsius
    #Author: Alex Konetchy
    #Returns the correct celsius temperature
    def in_celsius
        if @type == :c
            @temp
        else
            (@temp.to_f - 32.0) * (5.0/9.0)
        end
    end
end

class Fahrenheit < Temperature
    def initialize(temp)
        @type = :f
        @temp = temp
    end
end

class Celsius < Temperature
    def initialize(temp)
        @type = :c
        @temp = temp
    end
end
