def substrings(word, dict)
  word_split = word.split
  dict.reduce(Hash.new(0)) do |result, next_val|
    word_split.each {|w| result[next_val] += 1 if w.downcase.include?(next_val.downcase)}
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)