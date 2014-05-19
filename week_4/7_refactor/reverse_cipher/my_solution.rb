# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) # creating a method called translate_to_cipher that has a sentence as its parameter
    alphabet = ('a'..'z').to_a # converting the list of a to z string to an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # creating a hash called cipher that has letters from the alphabet array as its keys and 
                                                    # has the results of the rotating alphabet array as its value
    spaces = ["@", "#", "$", "%", "^", "&", "*"]   # creating an array called spaces and putting all the symbols inside it
    
    original_sentence = sentence.downcase   # creating a variable called original_sentence and set it equal to the lowercase of the inputted sentence
    encoded_sentence = []  # creating an empty array called encoded_sentence
    original_sentence.each_char do |element|  # iterating over each element in the original_sentence (inputted sentence)
      if cipher.include?(element)             # if the element from the original_sentence mathces the key value from the cipher hash
        encoded_sentence << cipher[element]   # push the value for the matched key into the encoded_sentence array
      elsif element == ' '              # if there is space, push one of the elements for spaces array into the encoded_sentece array
        encoded_sentence << spaces.sample
      else                              # if neither of the above statements are true, push the element into the encoded_sentece array
        encoded_sentence << element   
      end    # ends the if statements
     end     # ends the original_sentence loop
    
    return encoded_sentence.join    # returning and joining the encoded_sentence array to a string
end          # ends the method


# Questions:
# 1. What is the .to_a method doing? to change the list of string to an array
# 2. How does the rotate method work? What does it work on? rotate method is used to rotate the position of an element inside the array
# 3. What is `each_char` doing? It is used to iterate every character in the string
# 4. What does `sample` do? Sample is used to get a random element
# 5. Are there any other methods you want to understand better? I am not familiar with the sample and zip method because this is the first time I saw them
#    therefore I would like to understand them better.
# 6. Does this code look better or worse than your refactored solution of the original cipher code? What's better? What's worse? 
#    I think this code looks better than my refactored code, it is way more simpler and more concise. I like the idea of grouping the alphabet 
#    using the hash and also grouping all the symbols for the space using the array. It makes it easier when writing the control flow statement.
# 7. Is this good code? What makes it good? What makes it bad? I think this is a good code since it is short, simple and easy to understand.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? The encoded letter for "I", "want", and "string" always return the same thing everytime. The only thing
# that is different are the encoded symbols for the space.
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")


# 5. Reflection 

# What questions did you have while coding? What resources did you find to help you answer them?
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# After completing the cipher challenge, I found this code to be pretty easy to understand. It is straightforward and simple.
# The only research I did was about the simple, each_char, and zip method.

# Did you learn any new skills or tricks?
# I learnt about simple, each_char, and zip method.

# How confident are you with each of the Learning Competencies?
# I am pretty confident with them.

# Which parts of the challenge did you enjoy?
# Commenting the code

# Which parts of the challenge did you find tedious?
# None.





