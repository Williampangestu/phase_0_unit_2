# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input? array of strings or numbers
# What is the output? (i.e. What should the code return?) array of number
# What are the steps needed to solve the problem?

# create a method called mode that takes an array as the parameter
# inside the method, create a hash called counter that has a default value of zero
# iterate over the array  
# change each element of the array to be a hash key for counter. If it has been created before, push +1 as a value for that key
# iterate over the counter hash and remove all the keys, except the ones that has the biggest value
# return the list of the remaining keys for the counter hash


# 2. Initial Solution
def mode (array)
	counter = Hash.new(0)
	array.each do |element| 
		counter[element] += 1
	end

	counter.keep_if do |element,count| 
		count == counter.values.max 
	end

	return counter.keys
end

# 3. Refactored Solution
def mode (array)
	counter = Hash.new(0)
	array.each {|element| counter[element] += 1}

	counter.keep_if {|element,count| count == counter.values.max }

	counter.keys
end


# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# For this one, my strategy of writing the pseudocode before the actual code did not work. So, I tried experimenting 
# with the code and try to make it work before I wrote the pseudocode.

# What questions did you have while coding? What resources did you find to help you answer them?
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# While I was coding, I had a little bit trouble about the concept of hash and also how to keep and delete some elements in the array.
# I used http://fromonesrc.com/blog/2012/08/25/removing-select-elements-from-a-ruby-array-with-keep_if to help me find the answer.

# Did you learn any new skills or tricks?
# I learnt how to use keep_if method on a hash/array.

# How confident are you with each of the Learning Competencies?
# I am pretty confident with them, I think I did all of them right.

# Which parts of the challenge did you enjoy?
# Writing the code.

# Which parts of the challenge did you find tedious?
# None.








