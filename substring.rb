def substrings (phrase, dictionary)
    phrase_array = phrase.split(" ")
    p phrase_array
    hash = Hash.new(0)
    dictionary.each do |word|
      phrase_array.each do |phraseword|
        p word
        p phraseword
        if phraseword.include?(word)
          hash[word] += 1
        end
      end
    end
  p hash
end