class RPNCalculator
    #Initialize the class with an empty stack and a total value of zero
    def initialize
        @stack = []  
        @value = 0
    end
    
    #Method: stack
    #Author: Alex Konetchy
    #Returns the stack
    def stack
        @stack
    end
    
    #Method: value
    #Author: Alex Konetchy
    #Returns the value computed
    def value 
        @value
    end
    
    #Method: push
    #Author: Alex Konetchy
    #Adds a number to the stack array
    def push(num)
        stack << num
    end
    
    #Method: error_message
    #Author: Alex Konetchy
    #Raises a default error_message
    def error_message
        raise "calculator is empty"
    end
    
    #Method: plus
    #Author: Alex Konetchy
    #Pops and adds the last two values of the stack array. Saves in value variable
    def plus
        return error_message if stack.empty?
        x = stack.pop
        y = stack.pop
        stack << x + y
        @value = x + y
    end
    
    #Method: minus
    #Author: Alex Konetchy
    #Pops and subtracts the last two values of the stack array. Saves in value variable
    def minus
        return error_message if stack.empty?
        x = stack.pop
        y = stack.pop
        stack << y - x
        @value = y - x 
    end
    
    #Method: divide
    #Author: Alex Konetchy
    #Pops and divides the last two values of the stack array. Saves in value variable
    def divide
        return error_message if stack.empty?
        x = stack.pop.to_f
        y = stack.pop.to_f
        stack << y / x 
        @value = y / x 
    end
    
    #Method: times
    #Author: Alex Konetchy
    #Pops and multiplies the last two values of the stack array. Saves in value variable
    def times
        return error_message if stack.empty?
        x = stack.pop.to_f
        y = stack.pop.to_f
        stack << x * y 
        @value = x * y 
    end
    
    #Method: tokens
    #Author: Alex Konetchy
    #Converts a string into an array of numbers and symbols
    def tokens(string)
        tokens = []
        string.split.each do |token|
           case token
            when "+"
                tokens << :+
            when "-"
                tokens << :-
            when "*"
                tokens << :*
            when "/"
                tokens << :/
            else
                tokens << token.to_i
           end
        end
        tokens
    end
end
