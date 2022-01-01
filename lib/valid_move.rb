# code your #valid_move? method here
def valid_move?(board, index)
    if !position_taken?(board, index) && (index).between?(0,8)
      return true
    else 
      return false
    end
  end

# re-define your #index_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board,position)
    
    if board[position] == " "
      false
      elsif board[position] == ""
      false
      elsif  board[position] == nil
      false
      else   board[position] == "X" || board[position] == "O"
      true
      return false if [" ", "", nil].include?(board[position])
  return true if ["X", "O"].include?(board[position])
  raise "#{board[position]} is not a valid move"
    end
  end