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
def bakery_num(people, food) 
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  food_qty = {"pie"=> 0, "cake" => 0, "cookie" => 0}

  if my_list.include?(food)
     food_qty = my_list[food]
     
     if people % food_qty == 0
       num_of_food = people / food_qty
       return "You need to make #{num_of_food} #{food}(s)." 
       
     else
       while people > 0
        
        my_list.each do |k,v|
          food_qty[k] = people / v
          people = people % v
        end

        return "You need to make #{food_qty['pie']} pie(s), #{food_qty['cake']} cake(s), and #{food_qty['cookie']} cookie(s)."

       end
     end
          
  else
     raise ArgumentError.new("You can't make that food")
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
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 