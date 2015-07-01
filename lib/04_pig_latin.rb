
VOWELS = %w{ a e i o u }        #VOWELS ARRAY

#Method: translate
#Author: Alex Konetchy
#Translates a word into pig latin
def translate(string)
    pl_words = []                   #array of translated pig latin words
    
    #iteratre through the words array
    string.downcase.split.each do |word|
        if VOWELS.include?(word[0])     #If the word begins with a vowel
            pl_words << "#{word}ay"     #Simply add "ay" to the end
        else                            #If the word begins with a consonant               
            prefix = first_consonants(word)     #Figure out the prefix
            pl_words << word[(prefix.length)..word.length] + prefix + "ay"  #convert to pig latin
        end
    end
    pl_words.join(" ")
end

#Method: first_consonants
#Author: Alex Konetchy
##Return the first match of all the consonants and u
def first_consonants(string)
    string.match(/[b-df-hj-np-z]+/)[0] 
end

puts translate("ello")
