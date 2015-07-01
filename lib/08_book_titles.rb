class Book
    attr_accessor :title
    
    @@small_words = %w{a the an and in of}
    
    #Method: title
    #Author: Alex Konetchy
    #Returns a titlelized title
    def title 
        titleize(@title)
    end
  
    #Method: titleize
    #Author: Alex Konetchy
    #Returns a sentence in a title format for a book
    def titleize(sentence)
        words = []  #Array for titleized words
        
        #Scan through the sentence word by word
        sentence.scan(/\w+/) do |word|      
            if !words.empty? && @@small_words.include?(word) #If its a small word
                words << word                                #Leave as is
            else
                words << word.capitalize    #Capitalize
            end
        end
        words.join(' ')
    end
end
