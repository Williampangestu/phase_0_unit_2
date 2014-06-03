# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# create a PezDispenser class which takes in a shuffled array
# create a method called "pez_count" that returns the size/length of flavors
# create a method called "see_all_pez" that returns entire array
# create a method called "get_pez" that returns the last element in the array (
# create a method called "add_pez" that adds new pez/element to bottom (creator choice) to array


# 3. Initial Solution

class PezDispenser
 	attr_accessor :flavors

	def initialize(flavors)
		@flavors = flavors
	end

	def pez_count
		return @flavors.length
	end
 
 	def see_all_pez
 		return @flavors
 	end

 	def add_pez(new)
 		@flavors.push(new)
 	end

 	def get_pez
 		@flavors.pop
 	end

end
 

# 4. Refactored Solution
# I think my solution is already simple and concise so it does not need to be refactored.


# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

def assert
	raise "Assertion Failed!" unless yield
end

assert {super_mario.pez_count == 9}
assert {super_mario.see_all_pez == flavors}

# 5. Reflection 
# I found this challenge to be pretty simple and straightforward. I successfully translated the user stories into the pseudocode
# and then wrote my solution using the pseudocode. I think I need to work more on using the assert statements.


