class Board
  attr_accessor :top_left, :top_mid, :top_right, :mid_left, :middle, :mid_right, :bot_left, :bot_mid, :bot_right

  def initialize
    @top_left = " "
    @top_mid = " "
    @top_right = " "
    @mid_left = " "
    @middle = " "
    @mid_right = " "
    @bot_left = " "
    @bot_mid = " "
    @bot_right = " "
  end

  def display_board
    puts """               \|     \|
          __#{@top_left}__\|__#{@top_mid}__\|__#{@top_right}__
               |     \|
          __#{@mid_left}__\|__#{@middle}__\|__#{@mid_right}__
               \|     \|
            #{@bot_left}  \|  #{@bot_mid}  \|  #{@bot_right}
          """
  end

  def check_if_won
     if @top_left == "X" && @top_mid == "X" && @top_right == "X"
       puts "Xs have won in the top row!"
       $game_won  = true
     elsif @mid_left == "X" && @middle == "X" && @mid_right == "X"
       puts "Xs have won in the middle row!"
       $game_won  = true
     elsif @bot_left == "X" && @bot_mid == "X" && @bot_right == "X"
       puts "Xs have won in the bottom row!"
       $game_won  = true
     elsif @top_left == "X" && @middle == "X" && @bot_right == "X"
       puts "Xs have won in a diagonal!"
       $game_won  = true
     elsif @bot_left == "X" && @middle == "X" && @top_right == "X"
       puts "Xs have won in a diagonal!"
       $game_won  = true
     elsif @top_left == "X" && @mid_left == "X" && @bot_left == "X"
       puts "Xs have won in the left column!"
       $game_won  = true
     elsif @top_mid == "X" && @middle == "X" && @bot_mid == "X"
       puts "Xs have won in the middle column!"
       $game_won  = true
     elsif @top_right == "X" && @mid_right == "X" && @bot_right == "X"
       puts "Xs have won in the right column!"
       $game_won  = true
     elsif @top_left == "O" && @top_mid == "O" && @top_right == "O"
       puts "Os have won in the top row!"
       $game_won  = true
     elsif @mid_left == "O" && @middle == "O" && @mid_right == "O"
       puts "Os have won in the middle row!"
       $game_won  = true
     elsif @bot_left == "O" && @bot_mid == "O" && @bot_right == "O"
       puts "Os have won in the bottom row!"
       $game_won  = true
     elsif @top_left == "O" && @middle == "O" && @bot_right == "O"
       puts "Os have won in a diagonal!"
       $game_won  = true
     elsif @bot_left == "O" && @middle == "O" && @top_right == "O"
       puts "Os have won in a diagonal!"
       $game_won  = true
     elsif @top_left == "O" && @mid_left == "O" && @bot_left == "O"
       puts "Os have won in the left column!"
       $game_won  = true
     elsif @top_mid == "O" && @middle == "O" && @bot_mid == "O"
       puts "Os have won in the middle column!"
       $game_won  = true
     elsif @top_right == "O" && @mid_right == "O" && @bot_right == "O"
       puts "Os have won in the right column!"
       $game_won  = true
     elsif @top_left != " " && @top_mid != " " && @top_right != " " && @mid_left != " " && @middle != " " && @mid_right != " " && @bot_left != " " && @bot_mid != " " && @bot_right != " "
       puts "The game has stalemated!"
       $game_won  = true
     end
     end

     def enter_move(move, letter)
       move = move.downcase
       case move
       when "top left"
         @top_left.gsub!(" ", "#{letter}")
       when "top middle"
         @top_mid.gsub!(" ", "#{letter}")
       when "top right"
         @top_right.gsub!(" ", "#{letter}")
       when "middle left"
         @mid_left.gsub!(" ", "#{letter}")
       when "middle"
         @middle.gsub!(" ", "#{letter}")
       when "middle right"
         @mid_right.gsub!(" ", "#{letter}")
       when "bottom left"
         @bot_left.gsub!(" ", "#{letter}")
       when "bottom middle"
         @bot_mid.gsub!(" ", "#{letter}")
       when "bottom right"
         @bot_right.gsub!(" ", "#{letter}")
       else
         "You have entered incorrect syntax. You lose your turn as punishment."
     end

  end


end

class Player
  attr_accessor :name, :xs_or_os
  def initialize(name)
    @name = name
    #defaults to false, which is equivalent to Os
    xs_or_os = false
  end
end


board_1 = Board.new

board_1.display_board

puts "Hello there! Welcome to Tic-Tac-Toe"
puts "Please enter Player 1's name:"
player_1 = Player.new(gets.chomp)
puts "Please enter Player 2's name:"
player_2 = Player.new(gets.chomp)


player_1_x_or_o = rand(2)

if player_1_x_or_o == 1
  puts "#{player_1.name}, you have been randomly selected to play as Xs and go first."
  player_1.xs_or_os = true
  x_player = player_1.name
  o_player = player_2.name
else
  puts "#{player_2.name}, you have been randomly selected to play as Xs and go first."
  player_2.xs_or_os = true
  x_player = player_2.name
  o_player = player_1.name
end

$game_won = false

while $game_won == false
  puts "Enter your move, #{x_player}:"
  move = gets.chomp
  letter = "X"
  board_1.enter_move(move, letter)
  board_1.display_board
  board_1.check_if_won
  if $game_won == true
    break
  end
  puts "Enter your move, #{o_player}:"
  move = gets.chomp
  letter = "O"
  board_1.enter_move(move, letter)
  board_1.display_board
  board_1.check_if_won
end
