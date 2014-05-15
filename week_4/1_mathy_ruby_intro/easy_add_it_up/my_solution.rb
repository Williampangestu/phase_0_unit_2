# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input? array of string or numbers 
# What is the output? (i.e. What should the code return?) string of sentences
# What are the steps needed to solve the problem?

# create a method called total
# give the method a single parameter so that it can use an array as an argument
# use inject method to find the sum of numbers inside the array

# create a method called sentence_maker
# give the method a single parameter so that it can use an array as an argument
# use join method to connect each element in the array into a sentence
# use capitalize method to make the first letter capitalized
# use string concatenation to put a period at the end of the sentence

# 2. Initial Solution
def total(array)
	array.inject{|sum,n| sum + n}
end

def sentence_maker(array)
	array.join(" ").capitalize! + "."
end


# 3. Refactored Solution
# I think the total method does not need to be refactored since it's already concise.

# However, I think the sentence_maker method chains too many methods together so,
def sentence_maker(array)
	result = array.join(" ")
	result.capitalize! + "."
end


# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# My strategy of writing the pseudocode before the actual code worked.

# What questions did you have while coding? What resources did you find to help you answer them?
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I had a question about how to use inject method while I was coding, 
# I used http://blog.jayfields.com/2008/03/ruby-inject.html to help me find the answer.

# Did you learn any new skills or tricks?
# I learnt how to chain methods together.

# How confident are you with each of the Learning Competencies?
# I am pretty confident with them, I think I did all of them right.

# Which parts of the challenge did you enjoy?
# Writing the code.

# Which parts of the challenge did you find tedious?
# None.





