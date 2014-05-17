# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input? 
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# create a class called Array 
# create 2 methods called pad and pad! inside the class 
# both of the methods take 2 parameters, the first one is integer while the second one can be anything
# set the default value for the second parameter to be nil

# inside the pad method, create a variable called array and set it equal to the clone of the original array
# then create another variable called length and set it equal to the length of the cloned array 
# when length is less than the value of the first parameter, push the value of the second parameter to the end of the cloned array
# iterate this as many times as the difference of the the value of the first parameter and the length of the cloned array
# return the cloned array
# else, when the length is more than the value of the first parameter, just return the cloned array

# inside the pad! method, do the exact same thing but change the cloned array to the original array

# 2. Initial Solution
class Array
	def pad (num, val=nil)
		array = self.clone
		length = array.length

		if length < num 
			(num-length).times{array.push(val)}
			return array
		else
			return array
		end
	end

	def pad! (num,val=nil)
		if self.length < num 
			(num-self.length).times{self.push(val)}
			return self
		else
			return self
		end
	end

end

# 3. Refactored Solution
# I honestly don't know what I can do to refactor my code, I think its already simple and consice as it is right now.s


# 4. Reflection 

# What questions did you have while coding? What resources did you find to help you answer them?
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# While I was coding, I had a little bit trouble about how to create method and variables within the class.
# I used stackoverflow to help me understand it better.

# Did you learn any new skills or tricks?
# I learnt how to define class and also how to create method within the class.

# How confident are you with each of the Learning Competencies?
# I am pretty confident with them, I think I did all of them right.

# Which parts of the challenge did you enjoy?
# Writing the code and figuring out why it did not work at first.

# Which parts of the challenge did you find tedious?
# None.

 