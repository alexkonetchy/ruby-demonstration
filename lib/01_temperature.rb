#Method: ftoc 
#Author: Alex Konetchy
#Converts a temperature from Farenheit to Cesius
def ftoc(temp)
    (temp.to_f - 32.0) * (5.0/9.0)
end

#Method: ctof
#Author: Alex Konetchy
#Converts a temperature from Celsius to Fareneheit
def ctof(temp)
    ((temp.to_f * 9.0)/5.0) + 32.0
end
