# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? integer
# What is the output? (i.e. What should the code return?) string of number separated with comma
# What are the steps needed to solve the problem?

# create a method called separate_comma that takes an integer as its argument
# convert the integer to string and store the result inside a variable called string
# create a variable called iterator and set it equal to the length of the string divided by 3
# create a variable called index and set it equal to -4
# create a control flow

# if the length of the string is less than 4, just return the original string

# if the length of the string is not evenly divisible by 3 and also bigger than 3
# use the iterator variable to iterate over the block 
# inside the block, insert comma before the element with the given index variable, then decrement the index variable by 4

# else, create a variable called i and set it equal to iterator - 1
# then, repeat the same code as the previous if statement. Except, use i variable instead of iterator to iterate over the block



# 2. Initial Solution
def separate_comma (number)
	string = number.to_s   
	iterator = string.length / 3 

	if string.length < 4
		return string

	elsif string.length % 3 != 0 && string.length > 3  
	   index = -4
       iterator.times do
			string.insert(index,",")
			index -= 4
	   end

	   return string

	else 
	   index = -4
	   i = iterator - 1 
       i.times do
			string.insert(index,",")
			index -= 4
	   end
      
       return string

	end
end


# 3. Refactored Solution
def separate_comma (number)
	string = number.to_s   			# convert integer to string 

	# create an iterator value to use for the block later in the code. For example, since ruby always round numbers down by default,
	# if the length of the number is 5, it will return 1 eventhough 5/3 = 1.67

	iterator = string.length / 3 				

	index = -4				# create an index variable that has a value of -4. It will be used for the insert method later

	if string.length < 4			# if the number is less than 1000, just return the original string
		return string

	# if the number is not evenly divisible by 3 and bigger than 1000, create a variable i and set it equal to the iterator

	elsif string.length % 3 != 0 && string.length > 3  
	   i = iterator

	# However, if the number can be evenly divided by 3 and bigger than 1000, the variable "i" would be equal to the value of 
	# the iterator - 1. So 100 000 would have a value of 1 instead of 2 for "i"

	else
	   i = iterator - 1

    end

    i.times do 					# "i" is used here to determine how many times it should insert a comma between the number.
		string.insert(index,",")	# insert a comma at the index -4 of the string. (-1 is the last element of the string) 
		index -= 4			# if the iterator ("i") is more than 1, its gonna loop and put another comma at the 4th element to the left of the last comma
 	end
    return string

end

# 4. Reflection 

# What questions did you have while coding? What resources did you find to help you answer them?
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# While I was coding, I had a little bit trouble about the concept iteration using the .times method.
# I used stackoverflow to help me understand it better.

# Did you learn any new skills or tricks?
# I learnt .times method to do iteration and also .insert method to insert something into a string.

# How confident are you with each of the Learning Competencies?
# I am pretty confident with them, I think I did all of them right.

# Which parts of the challenge did you enjoy?
# Writing the code and figuring out why it did not work at first.

# Which parts of the challenge did you find tedious?
# None.

