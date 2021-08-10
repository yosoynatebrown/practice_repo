def baby_shark_lyrics
  p = ""
  d = " doo"
  s = "shark"
  g = "Grand"
  f = ["Baby #{s}", "Mommy #{s}", "Daddy #{s}", "#{g}ma #{s}", "#{g}pa #{s}", "Let's go hunt"]
  f.each { |m|
    3.times {p << m + "," + d * 6 + "\n"}
   p << m + "!" + "\n"
  }
p << "Run away,…"
end

puts baby_shark_lyrics

# Baby shark, doo doo doo doo doo doo
# Baby shark, doo doo doo doo doo doo
# Baby shark, doo doo doo doo doo doo
# Baby shark!
# Mommy shark, doo doo doo doo doo doo
# Mommy shark, doo doo doo doo doo doo
# Mommy shark, doo doo doo doo doo doo
# Mommy shark!
# Daddy shark, doo doo doo doo doo doo
# Daddy shark, doo doo doo doo doo doo
# Daddy shark, doo doo doo doo doo doo
# Daddy shark!
# Grandma shark, doo doo doo doo doo doo
# Grandma shark, doo doo doo doo doo doo
# Grandma shark, doo doo doo doo doo doo
# Grandma shark!
# Grandpa shark, doo doo doo doo doo doo
# Grandpa shark, doo doo doo doo doo doo
# Grandpa shark, doo doo doo doo doo doo
# Grandpa shark!
# Let's go hunt, doo doo doo doo doo doo
# Let's go hunt, doo doo doo doo doo doo
# Let's go hunt, doo doo doo doo doo doo
# Let's go hunt!
# Run away,…
