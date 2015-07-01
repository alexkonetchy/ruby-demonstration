#Method: reverser
#Author: Alex Konetchy
#Reverses all the words in a sentence
def reverser
    yield.reverse.split(" ").reverse.join(" ")
end

#Method: adder
#Author: Alex Konetchy
#Add parameter to code block
def adder(x = 1)
    yield + x
end

#Method: repeater
#Author: Alex Konetchy
#executes a block a number of times
def repeater(i = 1)
    i.times do 
        yield
    end
end
