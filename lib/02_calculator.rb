#Method: add
#Author: Alex Konetchy
#Adds to given numbers
def add(x,y)
    x + y 
end

#Method: subtract
#Author: Alex Konetchy
#Subtracts two given numbers
def subtract(x,y)
    x - y 
end

#Method: sum
#Author: Alex Konetchy
#Adds all the elements in an array
def sum(sums)
    if sums.empty?
        0
    else
        sums.reduce(:+)
    end
end

#Method: multiply
#Author: Alex Konetchy
#Multiplies an array of numbers
def multiply(nums)
    nums.reduce(:*)
end

#Method: power
#Author: Alex Konetchy
#Returns a number to the power of a given power
def power(num, power)
    num ** power
end

#Method: fact
#Author: Alex Konetchy
#Returns a factorial of a number
def fact(num)
    (1..num).reduce(1,:*)
end
