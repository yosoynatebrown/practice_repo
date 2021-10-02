def top_3_words(text)
  text = text.downcase
  array = text.split(" ")
  hash = Hash.new(0)

  array.each {|word|
  hash[word] += 1
  }
  p hash
end


top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""")
