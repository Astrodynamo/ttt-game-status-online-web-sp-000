# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column
  [1, 4, 7], # Middle column
  [2, 5, 8], # Right column
  [0, 4, 8], # Diagonal from top left
  [2, 4, 6] # Diagonal from top right
  ]
  
# Winner methods
def won? (board)
  WIN_COMBINATIONS.detect do |win_combination|
    board.values_at(win_combination[0], win_combination[1], win_combination[2]) == ["X", "X", "X"] || board.values_at(win_combination[0], win_combination[1], win_combination[2]) == ["O", "O", "O"]
  end
end

def full? (board)
  while position_taken?(board, 0..8)
    true
  end
false
end

def draw?
  
end

def over?
  
end

def winner
  
end
  