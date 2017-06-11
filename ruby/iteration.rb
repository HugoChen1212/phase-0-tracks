# Release 1
#Question number1
vehicel=["car", "bus", "motorcycle", "truck"]
hotel={"Motel 6"=>3,"Grant Hotel"=>4,"Super 8"=>3.5, "Hilton"=>5}

#Question number2
vehicel.each {|name|
  puts "Here is each vehicels: #{name}"
}

hotel.each do |name,level|
 puts "#{name}'s level is #{level}."
end

new_vehicel = vehicel.map! do |name|
  name.next
end
p new_vehicel

# Release 2
#Question number1
 four_start_up_hotel = hotel.reject do |name,level|
  level < 4
end
p four_start_up_hotel

# number2
four_start_down_hotel = hotel.select do |name,level|
  level < 4
end
p four_start_down_hotel

# number3
four_start_down_hotel = hotel.keep_if do |name,level|
 level < 4
end
p four_start_down_hotel

# number4
 number_arr=[0,1,2,3,4,5,6,7,8,9]
drop_num = number_arr.drop_while {|number|
  number < 5
}
puts "drop number less than 5."
p drop_num


