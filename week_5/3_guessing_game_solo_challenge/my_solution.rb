# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself 

# 2. Pseudocode

# Input: an integer
# Output: for the guess method, it returns the symbol :low if the guess is lower than the answer, return :high if the guess is higher 
# 		  than the answer and return :correct if the guess is equal to the answer.
# Steps:

# inside the initialize method, create an instance variable called @answer and set it equal to the parameter of the initialize method
# define a method called guess that takes one parameter (n)
# create an instance variable called @guess and set it equal to n
# if the value of @guess is bigger than the value of @answer
# 	return symbol :high
# if the value of @guess is less than the value of @answer
# 	return symbol :low
# else
# 	return symbol :correct
# end the control flow statement
# end the guess method
# define a method called solved? 
# create an instance variable called @guess and set it equal to n
# if the value of @guess is equal to the value of @answer
# 	return true 
# else
# 	return false
# end the control flow statement
# end the solved? method
# end class 


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(n)
  	@guess = n
  	if @guess > @answer
  		return :high
  	elsif @guess < @answer
  		return :low
  	else
  		return :correct
  	end
  end

  def solved?
  	if @guess == @answer 
  		return true
  	else
  		return false
  	end
  			
  end
end


# 4. Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(n)
  	@guess = n
  	return :correct if @guess == @answer 
  	@guess > @answer ? :high : :low  
  end

  def solved?
  	@guess == @answer ? true : false
  end

end
  

# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)

p game.guess(5) == :low
p game.guess(15) == :high
p game.solved? == false
p game.guess(10) == :correct
p game.solved? == true

# 5. Reflection 
# On this challange, I had some trouble when I was working on the solved? method. I did not know how to access the inputted parameter of the
# guess method and use it on my solved? method. Then after doing some research on the stackoverflow, I decided to create an instance variable
# for the guess parameter and use it on my solved? method. From this challenge, I learn that its always better to create an instance variable
# for the method parameter so that it can be used outside of the method. 
