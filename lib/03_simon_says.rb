#Method: echo
#Author: Alex Konetchy
#returns the same string given
def echo(string)
    string
end

#Method: shout
#Author: Alex Konetchy
#Upcase the given string
def shout(string)
    string.upcase
end

#Method: repeat
#Author: Alex Konetchy
#Repeats a string a number of times
def repeat(string, times = 2)
    ("#{string} " * times).chomp(" ")
end

#Method: start_of_word
#Author: Alex Konetchy
#Returns a set amount of letters at the start of a string
def start_of_word(word, x)
    word[0..(x-1)]
end

#Method: first_word
#Author: Alex Konetchy
#Returns the first word in a given sentence
def first_word(sentence)
    sentence.split.first
end

#Method: titleize
#Author: Alex Konetchy
#Returns a sentence in a title format for a book
def titleize(sentence)
    small_words = ["the", "over", "and"]
    words = []
    sentence.scan(/\w+/) do |word|
        if !words.empty? && small_words.include?(word)
            words << word
        else
            words << word.capitalize 
        end
    end
    words.join(' ')
end
