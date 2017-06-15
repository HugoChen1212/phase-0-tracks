#RELEASE 0 - PSEUDOCODE
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # break the array of a item name
  # create hash data structure for list
  # assign a food name to the list as key
  # set default quantity as a value
  # print the list
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# assign a food name to the list as key
# assign quantity to the list as value
# return list
# output:hash

# Method to remove an item from the list
# input: list, item name
# steps:
  # delete the item
# output: hash

# Method to update the quantity of an item
# input: list, item name, quantity
# steps:
  # IF item name in the list
  # update the quantity in the list
  # IF item name not in the list
  # send out a message to the user
# output: hash

# Method to print a list and make it look pretty
# input: list
# steps:
  # print and iterate to each item and quantity
# output: print a list


#RELEASE 1
def print_list(food_list)
  food_list.each do |item_name, quantity|
  puts "You have the following item #{item_name}, qty: #{quantity}."
  end
end

def create_list(string_food)
  food_item = string_food.split(" ")
  food_list = Hash.new(0)
  food_item.each do |item|
  food_list[item] = food_list.default
  end
  print_list(food_list)
  return food_list
end

def add_item(food_list, item_name, quantity)
  food_list[item_name] = quantity
  return food_list
end

def remove_item(food_list, item_name)
  food_list.delete(item_name)
  return food_list
end

def update_quantity(food_list, item_name, quantity)
  if food_list.has_key?(item_name)
  food_list[item_name] = quantity
  else
  puts "Sorry we don't have that item on our list."
  end
  return food_list
end

# RELEASE 2 - DRIVER CODE

 food_list = create_list("Pizza Bread Milk Butter")
 add_item(food_list, "Lemonade", 2)
 add_item(food_list, "Tomatoes", 3)
 add_item(food_list, "Onions", 1)
 p food_list

=begin
What did you learn about pseudocode from working on this challenge?
 Before I don't think psedudocode is necessity, but after this challenge I feel psedudocode is helpful.
 It break down the broblem into a simple steps without writing actual code.

 What are the tradeoffs of using arrays and hashes for this challenge?
 I choose Hash on this challege for my food_list because it hash key and value make the food_list more organize than using array.

What does a method return?
 The method will be return the food_list or hash.

What kind of things can you pass into methods as arguments?
  I pass method, string, and Integer into the arguments for this challenge.

How can you pass information between methods?
  We can pass the information between methods with the method's parameter or arguments.

What concepts were solidified in this challenge, and what concepts are still confusing?
   Most concepts in this challenge is solidified, only the refactor is confusing and not very good at.
=end