# U2.W5: Implement a Reverse Polish Notation Calculator

# I worked on this challenge by myself

# 2. Pseudocode

# Input:
# Output:
# Steps:

# create a new class called RPNCalculator
# create an instance method called evaluate that takes a string as its parameter
# inside the method, raise an argument error if the input is not a string
# then split the string and put them into a variable called @array
# create an empty array called @stack
# iterate over the @array 
# check to see if the element inside the @rray is digit character
# if it is, push the element into the @stack array
# else, if the element inside the @array is not a digit character
# pop the last element on the @stack array and set it equal to @num1
# then pop the next last element on the @stack array and set it equal to @num2
# if the element inside the @array is a "+"
# add @num1 and @num2 and push the total to @stack array
# if the element inside the @array is a "-"
# substract @num1 from @num2 and push the total to @stack array
# if the element inside the @array is a "+"
# multiply @num1 and @num2 and push the total to @stack array
# finally, pop the final answer from the @stack array

# 3. Initial Solution

class RPNCalculator
	def evaluate(input)

		raise ArgumentError.new("Your input has to be string") unless input.is_a?String

		@array = input.split(" ")
		@stack = [ ]
		
		@array.each do |x| 
			if x =~ /\d+/
				@stack.push(x.to_i)
			elsif 
				@num1 = @stack.pop
				@num2 = @stack.pop
				if x == "+"
					@stack.push(@num1 + @num2)
				elsif x == "-"
					@stack.push(@num2 - @num1)
				elsif x == "*"
					@stack.push(@num1 * @num2)
				end
			end
		end

		return @stack.pop
	end
end

# 4. Refactored Solution
class RPNCalculator
	def evaluate(input)

		raise ArgumentError.new("Your input has to be string") unless input.is_a?String

		@array = input.split(" ")
		@stack = [ ]
		
		@array.each do |x| 
			if x =~ /\d+/
				@stack.push(x.to_i)
			elsif 
				@num1 = @stack.pop
				@num2 = @stack.pop

				case x
				when "+" then @stack.push(@num1 + @num2)
				when "-" then @stack.push(@num2 - @num1)
				when "*" then @stack.push(@num1 * @num2)
				end
			end
		end

		return @stack.pop
	end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
rpn = RPNCalculator.new
p rpn.evaluate('50 20 -') == 30
p rpn.evaluate('1 2 +') == 3
p rpn.evaluate('2 5 *') == 10
p rpn.evaluate('70 10 4 + 5 * -') == 0
p rpn.evaluate('5 1 2 + 4 * + 3 -') == 14



# 5. Reflection 
# At first, I thought this is going to be a hard challenge. However, after I read the algorithm from the wikipedia page, it turned out to be 
# a fairly simple exercise. I implement my code using push and pop method based on the algorithm. Also, I learn how to use regular 
# expressions on my control flow statement.


