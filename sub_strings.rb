dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)

    hash_container= {}
    dictionary.each do |word|
        accumulator= count_word_repeat(text.downcase,word)
            hash_container[word.to_sym] = accumulator unless accumulator == 0
    end  
    return hash_container
end

def count_word_repeat(text,word)
   
    accumulator=0
    while text.include?(word)

    accumulator+=1
    text=text.sub(word,"")
        
    end

    return accumulator

end

puts substrings("Howdy partner, sit down! How's it going?",dictionary)



