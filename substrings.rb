def substrings (phrase, dictionary)

phrase = phrase.downcase
count = Hash.new
dictionary.each { |substring|
count[substring] = 0
}

dictionary.each {|substring|
count[substring] = phrase.scan(/#{substring}/).count
if count[substring] == 0 then
  count.delete(substring)
end
}

print count
end
