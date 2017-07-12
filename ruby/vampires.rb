puts "How many employees will be processed?"
  num_employees = gets.chomp.to_i
  idx=0
while idx < num_employees
  puts "Can you name any allergies that you have? (Please type done when finished)"
  allergies = ""
  arr=[]
 until allergies =="done"
   allergies = gets.chomp
   arr << allergies
 end

 if arr.include? ("sunshine")
  puts "Probably a vampire."
 else
 puts "What is your name?"
  name = gets.chomp
 puts "How old are you?"
  age = gets.chomp.to_i
 puts "What year were you born?"
  born_year= gets.chomp.to_i
 puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  order_garlic = gets.chomp
 puts "Would you like to enroll in the company's health insurance?(yes/no)"
 insurance = gets.chomp

 if (name=="Dracke Cula" || name == "Tu Fang")
    puts "Definitely a vampire."
 elsif (age <= 100 && (age+born_year) == 2017) || order_garlic == "yes"
   puts "Probably not a vampire."

 elsif (age>100 && (age+born_year) != 2017) && order_garlic == "no"
   if insurance=="no"
     puts "Almost certainly a vampire."

   else
     puts "probably a vampire."
   end
 else
  puts "Results inconclusive."
 end
 end
  idx+=1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."