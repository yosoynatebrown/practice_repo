class Player
  attr_accessor :name, :hidden_code, :points
  def initialize
    @points = 0
  end
end



class HumanPlayer < Player
  def initialize(name)
  @name = name
  end
end

class ComputerPlayer < Player
  attr_accessor :all_possible_guesses, :current_guess
  def initialize
    @name = "Hal"
    @hidden_code = [rand(1..8), rand(1..8), rand(1..8), rand(1..8)]
    @all_possible_guesses = [1, 2, 3, 4, 5, 6, 7, 8].repeated_permutation(4).to_a
    @current_guess = [1, 1, 2, 2]
    @remaining_guess_array = []
    @all_possible_guesses.each {|guess|
    @remaining_guess_array << guess}
  end
  def guesser(num_correct, num_in_correct_order)
    ints_correct = 0
    ints_in_correct_order = 0
    @remaining_guess_array.each_with_index {|guess, index| guess.each_with_index {|num, i|
    if @current_guess.include?(num)
      ints_correct += 1
    end
    if num == @current_guess[i]
      ints_in_correct_order += 1
    end
    }
    if ints_correct != num_correct && ints_in_correct_order != num_in_correct_order
      @remaining_guess_array.delete_at(index)
    end
    }
    @all_possible_guesses.delete(current_guess)

    possible_pegs = [0, 1, 2, 3, 4].repeated_permutation(2).to_a
    @all_possible_guesses.each_with_index { |guess, index|
possible_pegs.each {|pair|
  num_correct = pair[0]
  num_in_correct_order = pair[1]

}

  }




    @current_guess = @all_possible_guesses.sample
  end
end

class Board
  attr_accessor :board_array
  def initialize
  @board_array = Array.new(12) { Array.new(4) {0}}
  end
end


puts "Hi there! Welcome to Mastermind!"
puts "What's your name?"
player_1 = HumanPlayer.new(gets.chomp)
response = ""
while response != "computer" || response != "human"
puts "Would you like to play against a human or a computer? (type 'human' or 'computer')"
response = gets.chomp.downcase
if response == "computer"
  hal = ComputerPlayer.new
  puts "Neat. We've generated a computer to play against, named Hal"
  hidden_code = hal.hidden_code
  break
elsif response == "human"
  puts "Cool! Surprised you have friends. What's their name?"
  player_2 = HumanPlayer.new(gets.chomp)
  puts "#{player_1.name}, look away for a second. #{player_2.name}, what hidden code would you like to use?"
  hidden_code = gets.chomp.split
  hidden_code.each_with_index {|x, i|
  hidden_code[i] = x.to_i}
  puts "Cool thanks!"
  sleep 1
  system "clear"
  break
else
  puts "You entered an invalid response, you little twat."
end
end
#
# if response == "computer"
#   puts "Would you like to have the computer guess first, or you guess first?"


puts hal.hidden_code
board = Board.new
current_array = hal.current_guess
nums_correct = 0
nums_in_correct_order = 0
turns = 0
while current_array != hidden_code && turns < 12
puts "#{player_1.name}, enter a series of four numbers between 1 and 8:"
current_array = hal.current_guess
# converts input to integer
current_array.each_with_index {|x, i|
current_array[i] = x.to_i}
hidden_code.each_with_index {|num, i|
if current_array.include?(num)
  nums_correct += 1
end
if num == current_array[i]
  nums_in_correct_order += 1
end
}

board.board_array[turns] = current_array
puts board.board_array.reverse.map { |a| a.map{|i| i.to_s.rjust(2) }.join}
turns += 1

puts "You got #{nums_correct} correct, with #{nums_in_correct_order} in the correct location. You have used #{turns} out of 12 turns."
if nums_correct == 4 && nums_in_correct_order == 4
  puts "You win! Congrats!"
end
if turns == 12
  puts "You are out of turns!"
end
hal.guesser(nums_correct, nums_in_correct_order)
nums_correct = 0
nums_in_correct_order = 0

end
