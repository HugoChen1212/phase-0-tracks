#Release 1: Question number1
vehicel=["car", "bus", "motorcycle", "truck"]

actors={"Leonardo"=>5,"Tom"=>3,"Brad"=>8, "Ryan"=>10}

#Question number2
vehicel.each {
  |name| puts "Here is each vehicels: #{name}"
}

ex_of_map = vehicel.map! {|name|
 puts name
 name.capitalize
}
p ex_of_map

actors.each{
  |name, level|  puts "Here is the name of the actors #{name}, and here is the leve of this actors #{level}"
}

new_has=actors.map {  |name, level|
  actors["Ryan"]= 9
  puts "Here is the name of the actors #{name}, and here is the leve of this actors #{level}"
}
p new_has

# Release 2's Question number 1
low_level_actors = actors.delete_if {
  |name,level| level  < 5
}
p low_level_actors
p actors

# Question number 3
middle_actors = actors.select {
  |name,level| level == 5
}
p middle_actors
p actors

# Question number 2
high_level_actors=actors.keep_if {
  |name,level| level > 6
}
p high_level_actors
p actors

# Question number 4
 number_arr=[0,1,2,3,4,5,6,7,8,9]
drop_num = number_arr.drop_while {|number|
  number < 5
}
p drop_num
p number_arr

