def counter(words, args)


  sentence = []
  words.downcase.split(%r{\s}).each do |word|
    sentence << word if args.include?(word)
  end

  sentence.reduce(Hash.new(0)) do|summer, element|
  summer[element] +=1
  summer
  end

end

puts counter("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])