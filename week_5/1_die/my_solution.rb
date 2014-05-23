# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself

# 2. Pseudocode

# Input: integer
# Output: integer
# Steps:

# Inside the initialize method, create a control flow
# if the inputted parameter sides is less than 1, raise an Argument Error
# then create an instance variable and set it equal to sides
# Inside the sides method, return the instance variables from the initialize method
# Inside the roll method, create an array that consist a number, from 1 to the inputted parameter sides
# then, use the sample method on that array and return it


# 3. Initial Solution

class Die
  def initialize(sides)
  	if sides < 1
  		raise ArgumentError.new("It has to be a positive number")
  	end
    @sides = sides
  end
  
  def sides
    return @sides
  end
  
  def roll
    a = (1..@sides)
    return rand(a).to_i
  end
end



# 4. Refactored Solution
# I think my solution is already simple and concise so It does not need to be refactored.



# 1. DRIVER TESTS GO BELOW THIS LINE
test = Die.new(2)

p test.sides == 2

p test.roll == 1 || 2 



# 5. Reflection 
# From this challenge, I learn how to raise an ArgumentError and how to use instance variables inside a method.
# Also, while coding I had a question about how to raise an argument and generate a random number. I use http://apidock.com/ruby/ArgumentError
# and http://ruby.about.com/od/newinruby191/ss/Generating-Random-Numbers-In-Ruby.htm to help me solve the problems.







