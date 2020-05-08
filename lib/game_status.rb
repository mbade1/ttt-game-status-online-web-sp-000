
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
  
  # Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if board[win_combination[0]] == board[win_combination[1]] && 
      board[win_combination[1]] == board[win_combination[2]] && 
      position_taken?(board, win_combination[0])
      return win_combination
    end
  end
  false
end


def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end


def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && full?(board)
    return false
  else won?(board)
    return false
  end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  else 
    return false
  end
end

def winner(board)
  index = []
  index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    elsif board[index[0]] == "O" 
      return "O"
    end
  end
end

