class Timer
    attr_accessor :seconds
    
    def initialize
        @seconds = 0    #Default value for the seconds is zero
    end
    
    #Method: seconds=
    #Author: Alex Konetchy
    #Lets the user define what number of seconds there are
    def seconds=(seconds)
        @seconds = seconds
    end
    
    #Method: time_string
    #Author: Alex Konetchy
    #Formats the complete time string
    def time_string
        "#{padded(hours(@seconds))}:#{padded(minutes(@seconds))}:#{padded(true_seconds(@seconds))}" 
    end
    
    #Method: minutes
    #Author: Alex Konetchy
    #Calculates the number of minutes based on seconds
    def minutes(seconds)
        minutes = 0
        while seconds > 59
            seconds -= 60
            minutes = minutes < 59 ? minutes + 1 : 0    #Reset if minutes passed 59
        end
        minutes
    end
    
    #Method: hours
    #Author: Alex Konetchy
    #Calculates the number of hours based on seconds
    def hours(seconds)
        hours = 0
        while seconds > 3599
            seconds -= 3600
            hours += 1
        end
        hours
    end
    
    #Method: seconds
    #Author: Alex Konetchy
    #Calculates the number of seconds that will be left in the end
    def true_seconds(seconds)
        while seconds > 59
            seconds -= 60
        end
        seconds
    end
    
    #Method: padded
    #Author: Alex Konetchy
    #Takes in a number and formats to a string
    def padded(time)
        if time.to_s.size < 2   #If the numbers size is less than two
            "0#{time}"          #Add a zero to the front
        else
            time.to_s           #Convert to a string
        end
    end
end
