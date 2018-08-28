# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
  ]

def won(board)
  
  WIN_COMBINATIONS.detect do |element|
    if (board[element[0]] == "X" && board[element[1]] == "X" && board[element[2]] == "X")
      return true
    elsif(board[element[0]] == "O" && board[element[1]] == "O" && board[element[2]] == "O")
      return true
    else
      return false
    end
    
  end
  
end