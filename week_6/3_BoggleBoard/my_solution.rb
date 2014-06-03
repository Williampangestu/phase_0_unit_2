# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself


# 2. Pseudocode
# create a class called BoggleBoard
# create the initialize method that takes one parameter (board)
# set the instance variable board to board
# create the create_word method that takes any number of parameters and return the word from a set of given coordinates
# create the get_row method that takes one parameter and return all the word on that row as a string
# create the get_col method that takes one parameter and return all the word on that column as a string

# 3. Initial Solution
class BoggleBoard

	def initialize(board)
		@board = board
	end
 
 	def create_word(*coordinates)
 		coordinates.map {|x| @board[x.first][x.last]}.join
 	end

  	def get_row(row_num)
		@board[row_num].join
	end

	def get_col (col_num)
		@board.map{|element| element[col_num]}.join
	end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 

# 4. Refactored Solution
# I think my solution is already simple and concise so it does not need to be refactored.


# 1. DRIVER TESTS GO BELOW THIS LINE
p boggle_board.create_word([0,0],[1,1],[2,2],[1,2]) # => "bold"

p boggle_board.get_row(1) # => "iodt"

p boggle_board.get_col(1) # => "roca"

def assert
	raise "Assertion Failed!" unless yield
end

assert{boggle_board.create_word([0,1],[1,1],[0,2],[1,2]) == "road"}
assert{boggle_board.get_row(3) == "take"}
assert{boggle_board.get_col(2) == "adlk"}

# 5. Reflection 
# I found this to be a pretty simple challenge since some of the methods and solution were already done on last week's exercise.
# Overall, I feel confident in the Learning Competencies and enjoyed the challenge. It didn't take much reworking to get
# everything to run smoothly within the new class. I also fell more comfortable using the assert method to test the code.


