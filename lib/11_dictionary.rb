class Dictionary
  def initialize
    @entries = {}
  end
  
  #Method: entries
  #Author: Alex Konetchy
  #Returns the entries instance variable
  def entries
    @entries
  end
  
  #Method: add
  #Author: Alex Konetchy
  #Adds an entry. If a string converts to a hash first
  def add(entry)
    entry = {entry => nil} if entry.class == String   #Converts to hash if string
    entries.merge!(entry)
  end
  
  #Method: keywords
  #Author: Alex Konetchy
  #Sorts the keys in the entries hash alphabetically
  def keywords
    entries.keys.sort
  end
  
  #Method: include?
  #Author: Alex Konetchy
  #Checks to see if the entries hash has a key
  def include?(key)
    entries.has_key?(key)
  end
  
  #Method: find
  #Author: Alex Konetchy
  #Selects all the entries that match the given regex and the entries key
  def find(keyword)
    entries.select { |key, value| key =~ /#{keyword}/ }
  end
  
  #Method: printable
  #Author: Alex Konetchy
  #Prints out a readble version of the entries hash
  def printable 
    contents = []
    keywords.each { |word| contents << "[#{word}] \"#{entries[word]}\"" }
    
    contents.join("\n")
  end
end
