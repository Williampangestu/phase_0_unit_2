# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: array of labels
# Output: the number of elements in the array and the random elements from the array
# Steps:

# Inside the initialize method, create a control flow
# if the inputted parameter sides is an empty array, raise an Argument Error
# then create an instance variable and set it equal to labels
# Inside the sides method, return the length of the instance variables from the initialize method
# Inside the roll method, use the sample method on the instance variables

# 3. Initial Solution

class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("The list of labels can't be empty")
  	end
    @sides = labels
  end

  def sides
  	return @sides.length
  end

  def roll
  	return @sides.sample
  end
end



# 4. Refactored Solution
# Like the previous exercise, I also think that my code does not need to be refactored since it is pretty simple and easy to understand.



# 1. DRIVER TESTS GO BELOW THIS LINE
test = Die.new(["a","b","c"])

p test.sides == 3
p test.roll == "a" || "b" || "c"



# 5. Reflection 
# Since this challenge is similar to the previous one, I didn't have any trouble on completing it. 
# In addition, after doing it for so many times, I feel like I am getting  a lot more comfortable on testing my code 
# using the rspec and the driver test. 

