def caesar_cipher(string, shift)

letters = string.split("")

abc_array = ('a'..'z').to_a

capital_ABC = ('A'..'Z').to_a

letters.map! {|letter|
if abc_array.include?(letter)
  then letter = abc_array.find_index(letter) + shift
elsif capital_ABC.include?(letter)
  then letter = (capital_ABC.find_index(letter) + shift).to_f
else letter = letter
end
}
letters.map! {|letter|
if letter.kind_of?(Integer) && letter > 25 then letter = letter - 26
elsif letter.kind_of?(Integer) && letter < 0 then letter = letter + 26
elsif letter.kind_of?(Float) && letter > 25.0 then letter = letter - 26.0
elsif letter.kind_of?(Float) && letter < 0.0 then letter = letter + 26.0
else letter = letter
end}

letters.map! {|letter|
if letter.kind_of?(Integer)
  then letter = abc_array[letter]
elsif letter.kind_of?(Float)
  then letter = capital_ABC[letter]
else letter = letter
end}

string_finished = letters.join()

print string_finished
end
