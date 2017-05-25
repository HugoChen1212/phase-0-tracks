# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
 p zombie_apocalypse_supplies.join ("*")

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
def sort_string (arr)
  idx = 0

  while idx < arr.length
        idx2 =idx+1
    while idx2 < arr.length
        if (arr[idx].downcase<=>arr[idx2].downcase)==1
          arr[idx], arr[idx2] = arr[idx2], arr[idx]
        end
       idx2+=1
     end
     idx+=1
 end
 return arr
end

 p sort_string(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
def search_item (arr,item)
         idx=0
    while idx < arr.length
      if arr[idx]==item
         return true
      end
     idx+=1
    end
    return false
end

p search_item(zombie_apocalypse_supplies,"compass")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
def limited_itme (arr)
    new_arr=[]
    idx = 0
  while idx < 5
    new_arr << arr[idx]
    idx+=1
  end
    return new_arr
end

p limited_itme (zombie_apocalypse_supplies)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
update_supplies= zombie_apocalypse_supplies + other_survivor_supplies
p update_supplies.length
  update_length= update_supplies.uniq
p update_length.length
p update_supplies.uniq

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
p extinct_animals.keys
  p extinct_animals.values
extinct_animals.each do |key,value|
  print "#{key}-#{value}" + " * "
  end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
def keep_animals (hash)
     hold_animals=[]
  hash.each do |animal, year|
      if year < 2000
        hold_animals<<animal
      end
    end
    return hold_animals
end
  p  keep_animals(extinct_animals)

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
def update_years (hash)
   hash.each do |animal,year|
     hash[animal]=year+3
   end
   return hash
 end
 p update_years(extinct_animals)

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
def check_animals_extinct (hash, animal_name)
   hash.each_key do |animal|
     if animal == animal_name
       return true
     end
   end
   return false
 end
p check_animals_extinct(extinct_animals, "Andean Cat")
p check_animals_extinct(extinct_animals, "Dodo")
p check_animals_extinct(extinct_animals, "Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
 arr=[]
 arr<< extinct_animals.delete("Passenger Pigeon")
 p arr
 p extinct_animals