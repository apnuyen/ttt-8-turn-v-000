<<<<<<< HEAD
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true 
    move(board, index, char = "X")
  else 
    turn(board) 
  end 
  display_board(board)
=======
def turn() 
  puts "Where would you like to go?"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, char = "X")
    display_board(board)
  else
    until valid_move?(board, index)
      puts "Where would you like to go?"
    end 
  end
>>>>>>> 7d96c59b620dc3eba830c3f76a359c0d7d015156
end 


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
 input = input.to_i
 input - 1
end
 
def move(board, index, char = "X")
 board[index] = char
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
   false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end
