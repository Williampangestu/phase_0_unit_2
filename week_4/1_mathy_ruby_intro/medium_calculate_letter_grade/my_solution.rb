# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# create a method called get_grade that takes an array as the parameter
# use inject method to find the sum of numbers inside the array and set it equal to a variable called sum
# divide sum by the number of elements in the array and set it equal to average
# use if and else statement
# if average >= 90, return A
# if average >= 80, return B
# if average >= 70, return C
# if average >= 60, return D
# else, return F


# 2. Initial Solution
def get_grade (array)
	sum = array.inject{|sum,n| sum + n}
	average = sum/array.length

	if average >= 90
		return "A"
	elsif average >= 80
		return "B"
	elsif average >= 70
		return "C"
	elsif average >= 60
		return "D"
	else 
		return "F"
	end
end
			

# 3. Refactored Solution
def get_grade (array)
	sum = array.inject{|sum,n| sum + n}
	average = sum/array.length

	case average
	when 90..100 then return "A"
	when 80...90 then return "B"
	when 70...80 then return "C"
	when 60...70 then return "D"
	when 0...60 then return "F"
	end
end

# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# My strategy of writing the pseudocode before the actual code worked. I had some problems refactoring my code.

# What questions did you have while coding? What resources did you find to help you answer them?
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I had questions about how to use case and when statement with inequality, I was having trouble implementing it
# when I was refactoring my code. I finally found the solution to my problems by going to this website 
# http://stackoverflow.com/questions/21563392/using-nested-case-statements-to-return-value

# Did you learn any new skills or tricks?
# I learnt how to use case statement.

# How confident are you with each of the Learning Competencies?
# I am pretty confident with them, I think I did all of them right.

# Which parts of the challenge did you enjoy?
# Refactoring the code.

# Which parts of the challenge did you find tedious?
# None.



