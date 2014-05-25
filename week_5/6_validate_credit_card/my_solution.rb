# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself

# 2. Pseudocode

# Input: 
# Output:
# Steps:

# Create a new class called CreditCard
# Initialize the class by passing in the number which is an integer of 16 digits.
# Create an instance variable called @number and put each digit of the card number into an array of integers.
# Create a ArgumentError if card number is not equal to 16 digits.
# Create a method called check_card
# Create a new instance variable called @sum that will keep track of the total number
# Iterate over the array of integers using a method that will modify this array
# if the index of the array is an odd number, multiply the value of its element by two
# if the index of the array is an even number, return the original value of its element 
# Iterate over the number in the modified array 
# If the number is greater than or equal to 10, then subtract 9 from the number before adding it to the @sum
# If the number less than 10, just add it to the @sum
# Lastly, check the @sum to see if its divisible by 10.   
# If it is, then return true, else return false.

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(number)
		@number = number.to_s.chars.map(&:to_i)
		if @number.length != 16
			raise ArgumentError.new("Your credit car number has to be 16 digits")			
		end
	end

	def check_card
		@sum = 0

		@number.map!.with_index do |value, index| 
			if index % 2 == 0
				value 
			else 
				value * 2
			end
		end

		@number.each do |value|
			if value >= 10
				@sum += value - 9
			else
				@sum += value
			end
		end

		if @sum % 10 == 0
			return true
		else 
			return false
		end

	end

end

# 4. Refactored Solution

class CreditCard
	def initialize(number)
		@number = number.to_s.chars.map(&:to_i)
		raise ArgumentError.new("Your credit car number has to be 16 digits") if @number.length != 16
	end

	def check_card
		@sum = 0

		@number.map!.with_index do |value, index| 
			index % 2 == 0 ? value : value * 2
		end

		@number.each do |value|
			value >= 10 ? @sum += value - 9 : @sum += value
		end

		return @sum % 10 == 0

	end

end


# 1. DRIVER TESTS GO BELOW THIS LINE
card1 = CreditCard.new(1234567890123456)
p card1.check_card == false 

card2 = CreditCard.new(4563960122001999)
p card2.check_card == false


# 5. Reflection 
# I found this challenge to be quite difficult, I had quite a lot of trouble and questions while I was doing it. The first question
# I had was how to convert the inputted number into an array of integers. After doing some reseach, I knew that I have to use chars
# method. The second question I had was how to sum up the double digits elements, this one took me a long time to figure out. 
# Finally, after doing lots of reseach online, I decided to substract the double digits elements by nine. Overall, I enjoyed this
# challenge because it really pushed me to figure out how to accomplish things step by step.





