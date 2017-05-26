=begin
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # convert the string to array
  # then iniatialize Hash
  # iterate through array and make item keys into Hash and assign value as quantity.
  # Call print method
  # Return hash
# output:  hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # add item with quantity into the Hash list
# output: hash

# Method to remove an item from the list
# input: list, item name
# steps:
  # Delete the item
  # Return the list
# output: hash

# Method to update the quantity of an item
# input: list, item name, item quantity
# steps:
  # ask for key If the key is there then reset the item quantity
  # If the key is not ther, it will let the user know the item is not there
  # Return hash
# output: hash

# Method to print a list and make it look pretty
# input: list
# steps:
  # iterate to the list
  # print out each quantity and item
# output: nil
=end

def create_list (items)
  item_list = items.split (" ")
  list = Hash.new
  item_list.each do |item|
    list[item] = 0
  end
  print_list (list)
  return list
end

def add_list (list=create_list(items),item_name,optional_quantity)
   list[item_name]=optional_quantity
   return list
 end

def update_quantity (list=create_list(items),item_name,item_quantity)

     if list.has_key?(item_name)
       list[item_name]=item_quantity
    else
      puts "This item name is not exist."
    end
      return list
end

def print_list (list)
  list.each do |item,quantity|
    puts "* #{item}, qty: #{quantity}"
  end
end

list =create_list("apple carrots")
 add_list(list,"Lemonade",2)
 add_list(list,"Tomatoes",3)
 add_list(list,"Onions",1)
 add_list(list,"Ice Cream",4)
 update_quantity(list,"Ice Cream",1)
p print_list(list)

=begin
  Before I don't think psedudocode is necessity, but after this challenge I feel psedudocode is helpful and it break down the problem into a simple steps without writing actual code. I choose Hash on this challege for my list because it hash key and value make the list more organize than using array because array store items in an list. The method will be return the list or hash. I pass method, String, and Integer into the arguments for this challenge. We can pass the information between methods with the mthods parameter. I think the solidfied in this challenge is the print_method. I think I have litter confused in solidified.
=end