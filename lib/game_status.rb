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
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.find do |win_combo|
    if position_taken?(board, win_combo[0]) == true && position_taken?(board, win_combo[1]) == true && position_taken?(board, win_combo[2]) == true &&
      win_combo[0] == "X" && win_combo[1] == "X" && win_combo[2] == "X" || position_taken?(board, win_combo[0]) == true && position_taken?(board, win_combo[1]) == true && position_taken?(board, win_combo[2]) == true &&
      win_combo[0] == "O" && win_combo[1] == "O" && win_combo[2] == "O"
      return win_combo
    end
  end
