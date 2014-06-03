# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself


# Original Solution
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


# Refactored Solution
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


# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Invalid Credit Card" unless yield
end

card_1 = CreditCard.new(4563960122001999)
assert{card_1.check_card == true}

card_2 = CreditCard.new(4563960122001991)
assert{card_2.check_card == false}

# Reflection 

