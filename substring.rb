def substrings (phrase, dictionary)
    phrase_array = phrase.downcase.split(" ")
    hash = Hash.new(0)
    dictionary.each do |word|
      phrase_array.each do |phraseword|
        if phraseword.include?(word.downcase)
          hash[word] += 1
        end
      end
    end
  p hash
end