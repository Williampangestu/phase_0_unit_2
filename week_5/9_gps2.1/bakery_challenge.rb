# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) William Pangestu
# 2) Cassie Moy

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)   # creates a method that takes a number and a string 
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # creates a hash that has foods as its keys
  pie_qty = 0       # creates variable about pie quantity 
  cake_qty = 0      # creates variable about cake quantity
  cookie_qty = 0    # creates variable about cookie quantity
  
  has_fave = false  # a boolean that has false as its default value

  my_list.each_key do |k|   # Iterates over the hash's keys
      if k == fav_food      # check if each key match the favorite food 
        has_fave = true     # this switches the has_fave variable to true
        fav_food = k        # unneccessary, this just sets the fav food to be equal to the key k
      end                   # closes the if statement
  end                       # closes the loop
  
  if has_fave == false      # If fav_food is not in the hash's keys, has_fave will still be false
      raise ArgumentError.new("You can't make that food") # Raise Argument Error 
  else                      # If we do have fav_food
      fav_food_qty = my_list.values_at(fav_food)[0] # Creates a variable, set to value in hash of fav_food  
  
      if num_of_people % fav_food_qty == 0 # If number of people is a multiple of fav_food_qty
          num_of_food = num_of_people / fav_food_qty # Creates a variable, set to num_of_people divided by fav_food_qty
          return "You need to make #{num_of_food} #{fav_food}(s)." # Returns string
  
      else num_of_people % fav_food_qty != 0 # If number of people can't be divided evenly by fav_food_qty
           while num_of_people > 0 # If number of people is greater than 0
            if num_of_people / my_list["pie"] > 0 # If number of people divided by pie servings > 0
                pie_qty = num_of_people / my_list["pie"] # Set pie qty to number of people divided by pie servings 
                num_of_people = num_of_people % my_list["pie"] # Set number of people to remainder of number of people divided by pie servings
            elsif num_of_people / my_list["cake"] > 0 # If number of people divided by cake servings > 0
                cake_qty = num_of_people / my_list["cake"] # Set cake qty to number of people divided by cake servings
                num_of_people = num_of_people % my_list["cake"] # Set number of people to remainder of number of people divided by cake servings
            else 
                cookie_qty = num_of_people # Set cookie quantity to number of people
                num_of_people = 0 # Number of people should be 0
            end # Closes if-else statement.
          end # Closes the while statement.
          
          return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)." # Returns string
      end # Closes if-else statement.
  end # Closes if-else statement.
end # Closes the method.
 
# Our Refactored Solution
def bakery_num(people, fav) 
  menu = {"pie" => 8, "cake" => 6, "cookie" => 1}       # this hash states the number of people each food feeds
  need = {"pie"=> 0, "cake" => 0, "cookie" => 0}        # this hash states the quantity of each food that need to be made

  raise ArgumentError.new("You can't make that food") if menu.has_key?(fav) == false # this raises an argument error if fav food is not on the menu's hash key

  if people % menu[fav] == 0                          # if the number of people is a multiple of fav food quantity
     num_of_food = people / menu[fav]
     return "You need to make #{num_of_food} #{fav}(s)." 
       
  else                                                # if the number of people is not evenly divisible by fav food quantity
      if fav == "pie"                                 # if fav food is pie
         need["pie"] = people / menu["pie"]           # the amount of pie that need to be made is equal to the number of people divided by the pie quantity
         people = people % menu["pie"]                # the "new total" of the number of people is equal to the remainder of the "original" number of people divided by the pie quantity
         need["cake"] = people / menu["cake"]         # use the "new total" of the number of people to calculate the amount of cake that need to be made
         people = people % menu["cake"]               # calculate the remainder of people after it is divided by cake quantity, this will be used to  
                                                      # determine the number of cookies that are need to be made

      elsif fav == "cake"                             # if the fav food is cake
         need["cake"] = people / menu["cake"]         # instead of pie, we have to calculate the amount of cakes that are need to be made
         people = people % menu["cake"]
         need["pie"] = people / menu["pie"]
         people = people % menu["pie"]

      end

        need["cookie"] = people                       # use the total remainder of people after it has been divided by pie and cake quantity
                                                      # to determine the number of cookies that are need to be made

        return "You need to make #{need["pie"]} pie(s), #{need["cake"]} cake(s), and #{need["cookie"]} cookie(s)."

  end

end  
  
#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." 
 
 