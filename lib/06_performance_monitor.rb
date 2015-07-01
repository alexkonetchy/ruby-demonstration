#Method: measure
#Author: Alex Konetchy
#Params: i = the number of times the block should be run
#Tells you how long it took to run the code
def measure(i = 1)
    start_time = Time.now       #Current time at the start
    
    #Execute code block the given amount of times
    i.times do  
        yield
    end
    
    end_time = Time.now         #Current time at the end
    (end_time - start_time) / i #The total time divided by the number of time executed to find average
end
