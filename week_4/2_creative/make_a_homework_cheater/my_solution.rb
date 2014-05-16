# U2.W4: Homework Cheater!


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: topic, title, name, date, thesis 
# Output: string of paragraph
# Steps:

# create a method called essay_cheater that take the following parameters: essay_topic, title, name, date, and thesis statement
# create an if statement for the 3 topics type
# create a generic template for each topic 
# pass the input to the generic template and output it


# 3. Initial Solution

def history_essay(topic, title, name, date, thesis)
	if topic == "person"
		print "#{title}. This essay is about a biography of #{name}. He/she was born on #{date}. #{thesis}."
	elsif topic == "place"
		print "#{title}. This essay is about a history of #{name}. Independence day in #{name} is annually celebrated on #{date}. #{thesis}."
	elsif topic == "invention"
		print "#{title}. This essay is about a history of #{name}. It was invented on #{date}. #{thesis}."
	end
end
						

# 4. Refactored Solution


# 1. DRIVER TESTS GO BELOW THIS LINE
sentence_1 = "Famous Person. This essay is about a biography of Kobe Bryant. He/she was born on August 23, 1978. His greatest scoring achievement is 81 points against Toronto Raptors."
sentence_2 = "Famous Place. This essay is about a history of United States. Independence day in United States is annually celebrated on July 4. The United States has been a leader in scientific research and technological innovation since the late 19th century."
sentence_3 = "Famous Invention. This essay is about a history of paper. It was invented on 105 A.D.. Paper is a versatile material with many uses."

p history_essay("person", "Famous Person", "Kobe Bryant", "August 23, 1978", "His greatest scoring achievement is 81 points against Toronto Raptors") == sentence_1
p history_essay("place", "Famous Place", "United States", "July 4", "The United States has been a leader in scientific research and technological innovation since the late 19th century") == sentence_2
p history_essay("invention", "Famous Invention", "paper", "105 A.D.", "Paper is a versatile material with many uses")== sentence_3



# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# My strategy of writing the pseudocode before the actual code worked.

# What questions did you have while coding? What resources did you find to help you answer them?
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None.

# Did you learn any new skills or tricks?
# I learnt how to make a driver test code.

# How confident are you with each of the Learning Competencies?
# I am pretty confident with them, I think I did all of them right.

# Which parts of the challenge did you enjoy?
# Writing the code.

# Which parts of the challenge did you find tedious?
# None.
