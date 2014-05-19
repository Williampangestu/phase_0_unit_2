# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 4]
my_family_pets_ages = {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, 
            "Annabelle" => 2, "Ditto" => 5}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  num = source.grep(Fixnum)
  str = source.grep(String)
  return num.sort + str.sort
end

def my_hash_sorting_method(source)
  source.sort_by {|key,value| value}
end

# Identify and describe the ruby method you implemented. 

# For the array sorting method, I first created an array called num that returns an array of every element in the source that is equal to Fix number
# Next, I created another array called str that returns an array of every element in the source that is equal to string
# I used the sort method to sort the num and str array 
# After that, I concatenate both of them into one array

# For the hash sorting method, I used the sort_by method to sort the hash by its value from smallest to largest


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# When I was researching, I felt like Ruby doc is a good starting point. However, I don't feel like it is detailed enough on explaining some 
# stuffs and it also does not have a clear explanation on its examples. Also, I think I need to practice a lot on explaining my thoughts to other
# people.
# 
# The new tricks that I learnt from this challenge is how to use grep method. After spending a lot of time figuring out why I got false on the driver code,
# I realize that some of the answers on the driver code are different than the given array. Thus, I changed some of them to make my code work.

