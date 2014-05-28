# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

# Part 1: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# define a method called get_row that takes 2 parameters (the board array and the row number)
# return the index row of board array
# end the method


# Initial Solution
def get_row(board,row_num)
	board[row_num]
end


# Refactored Solution
# I think my solution does not need to be refactored since it is already simple and concise.

# DRIVER TESTS GO BELOW THIS LINE
p get_row(boggle_board,2) == ["e","c","l","r"]
p get_row(boggle_board,1) == ["i","o","d","t"]


#-------------------------------------------------------------------------------

# Part 2: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# define a method called get_row that takes 2 parameters (the board array and the column number)
# use map method to iterate over each element on the array and return the index(column) of each element.
# end the method


# Initial Solution
def get_col (board,col_num)
	board.map{|element| element[col_num]}
end


# Refactored Solution
# I think my solution does not need to be refactored since it is already simple and concise.

# DRIVER TESTS GO BELOW THIS LINE
p get_col(boggle_board,1) == ["r","o","c","a"]
p get_col(boggle_board,2) == ["a","d","l","k"]

# Reflection 
# I found this exercise to be pretty simple and straightforward. However, I had a little bit trouble when I wanted to access the boogle_board 
# array in my methods. I originally thought that it was a global variable so that I can just use it in my get_row and get_col methods. 
# It turned out that it was not. So instead of making another variable in my methods to access the original array, I just put 2 
# parameters on my methods, the board array and the column/row number. 


<<<<<<< HEAD
=======

>>>>>>> upstream/master
