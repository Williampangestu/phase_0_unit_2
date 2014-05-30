# U2.W6: Testing Assert Statements

# I worked on this challenge by myself


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# The name variable is set to be equal to "bettysue"
# For the first assert method call, it returns nil since the block holds a true value
# However, for the second assert method call, it returns the error statement "Assertion failed!" because the name variable inside the
# block is not equal to the "bettysue"


# 3. Copy your selected challenge here
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

# 4. Convert your driver test code from that challenge into Assert Statements
test = Die.new(2)

assert {test.sides == 2}
assert {test.sides == 4} # => Assertion failed!


# 5. Reflection
# Since this is a pretty simple introduction to Assert Method, I didn't encounter any problem when doing this challenge. However, I haven't
# fully understood the advantages of using assert method compared to the regular driver test code.




