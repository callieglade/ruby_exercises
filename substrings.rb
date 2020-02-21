def substrings(word, dictionary)
    # returns Hash with each dictionary entry found in the original word
    matches = {}
    word = word.split
    word.each do |word|
        dictionary.each do |substr|
            if word.include?(substr)
                if matches.keys.include?(substr)
                    matches[substr] += 1
                else
                    matches[substr] = 1
                end
            end
        end
    end
    return matches.inspect
end

word = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings(word, dictionary)