=begin
- First create a way to get users or chlients information.
- convert user's input to the appropriate data type or hash
- print the hash back out to the screen when users has answered all of the questions.
-User are able to update a key.
- when users make mistakes the program will come up two options.
  - please type "none" if you want to skip this mistakes
  - or type "decor_theme" for a new vaue and update the :decor_theme key.
- Print the latest version of the hash, and exit the program
=end

my_array=[]
puts "Please enter yoru name here."
    name = gets.chomp
    my_array << name
puts "Please enter your age here."
    age = gets.chomp.to_i
    my_array << age
puts "What is your favor design or works of art?"
    favor_design = gets.chomp
    my_array << favor_design
puts "Do you think your favor design is the best in this city? (yes/no)"
    whether_the_best = gets.chomp
    my_array << whether_the_best

p my_array

my_hash ={name=>age, favor_design=> whether_the_best}
p my_hash
p my_hash.keys
p my_hash.values

puts "Are you make a mistake?(yes/none)"
   whether_make_mistake = gets.chomp
  if whether_make_mistake == "yes"
        puts "please enter how many mistake you want to make?"
        number_of_mistake = gets.chomp.to_i
        idx=0
    while idx < number_of_mistake
        update_values=[]
       loop do
        puts "please enter a name of that mistake(age / best_designer) when you done please type exit"
        input = gets.chomp
        break if input=="exit"
        update_values << input
       end

        if update_values.include?("age")
           puts "please enter the new values of your age."
           age = gets.chomp.to_i
           my_hash[name]=age
        elsif update_values.include?("best_designer")
           puts "please enter the new values of your thinking(yes/no)"
           whether_the_best = gets.chomp
           my_hash[favor_design] = whether_the_best

       else
           puts "please type age & or / best_designer only!"
       end
         idx+=1
    end
    elsif whether_make_mistake =="none"
      puts "Thank you for time, all your information is correct."
    else
      puts "please type none or yes only!"
 end
p my_hash