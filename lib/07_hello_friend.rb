class Friend
    
    #Method: greeting
    #Author: Alex Konetchy
    #Greets a friend
    def greeting(name = nil)
        if name == nil
            "Hello!"
        else
            "Hello, #{name}!"
        end
    end
end
