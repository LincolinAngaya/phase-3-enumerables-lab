require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
  food_name = spicy_foods.map{|b| b[:name]}

   return food_name

end

 # puts get_names(spicy_foods)


# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # your code here
  level = spicy_foods.select{|b| b[:heat_level] >= 5}

  return level
end

# puts spiciest_foods(spicy_foods)

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here
  return spicy_foods.each {|b| puts "#{b[:name]} (#{b[:cuisine]}) | Heat Level: #{'🌶' * b[:heat_level]}"}
end
# print_spicy_foods(spicy_foods)

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  selected = spicy_foods.each{|b| puts 
  if b[:cuisine] == cuisine
  return b
end
}
end
 get_spicy_food_by_cuisine(spicy_foods, "American")


# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here
  sorted = spicy_foods.sort{|b1, b2| b1[:heat_level] <=> b2[:heat_level]}
  return sorted
end
# puts sort_by_heat(spicy_foods)

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
  levels = spicy_foods.filter{|b| b[:heat_level] > 5 }
  return levels.each {|b| puts "#{b[:name]} (#{b[:cuisine]}) | Heat Level: #{'🌶' * b[:heat_level]}"}
end

# puts print_spiciest_foods(spicy_foods)

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  total_level = spicy_foods.sum{|b| b[:heat_level]}

  return total_level/spicy_foods.size
end
#  puts average_heat_level(spicy_foods)
