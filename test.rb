puts("What\'s your age?")
age = gets.chomp.to_i

comment = age<27 ? "You've got your whole life ahead of you" : "Daaamn you old bro"


puts(comment)