def substrings(string, dictionary)

  counter_hash = Hash.new(0) #created a new hash with initial value 0 for counting the substrings in words

  string_to_array = string.split(" ")

  dictionary.each do |substr|

    string_to_array.each do |word|

      if word.downcase.include?(substr.downcase)
        counter_hash[substr] += 1 #icrease 1 if the current word includes curren substring 
      end

    end

  end

  return counter_hash

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)