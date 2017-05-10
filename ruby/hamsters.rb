puts "What is the hamster's name?"
 name=gets.chomp
puts "What volume level from 1 to 10 is the hamster?"
 volume = gets.chomp.to_i
puts "what is the fur color?"
 fur_color=gets.chomp
puts "Is the hamster adoptable? (Y/N)"
 adoptable = gets.chomp
puts "How old is the hamster?"
 age=nil
 age=gets.chomp
puts "The name is #{name}."
puts "The volume is #{volume}."
puts "The fur color is #{fur_color}."
puts "the adoptability is #{adoptable}."
puts "the age is #{age}."