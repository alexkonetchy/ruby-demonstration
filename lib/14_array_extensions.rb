#Practice to modify the existing Array class
#Author: Alex Konetchy
class Array
    #Method: sum
    #Author: Alex Konetchy
    #Sums all of the numbers in the array
    def sum 
        return 0 if self.empty?
        self.reduce(:+)
    end
    
    #Method: square
    #Author: Alex Konetchy
    #Returns each value of the array to the power of two
    def square
        return [] if self.empty?
        self.map { |num| num**2 }
    end
    
    #Method: square
    #Author: Alex Konetchy
    #Replaces each element on the array with the value to the power of two
    def square!
        return [] if self.empty?
        self.map! { |num| num**2 }
    end
end
