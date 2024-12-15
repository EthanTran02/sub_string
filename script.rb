# iterate throught dict with reduce to return a hash
# turn string into array of word, check if word_array.include?(item)
# 
#    => hash[item] += 1 
#    

def substrings(string, dictionary)
    new_hash = dictionary.reduce(Hash.new(0)) do |hash, item|
      word_array = string.downcase.split(" ")
      word_array.each do |element|
        hash[item] += 1 if element.include?(item)
      end
      hash
    end
    new_hash
end 


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary) 