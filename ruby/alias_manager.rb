=begin
- First, look for the first and last name
- Then swapping the first and last name
- After that will changing all of the vowels to the next vowel in "aeiou" and consonats to the next letter of the consonates.
  - it will convert the string to an array to work with it.
  - But brfore that I will need to figure out whether a letter is a vowel
  - Also I will need to deal with the fact that some letters are uppercase
  - Moreover, I will need to handle edge cases
- After all the alphabet has been converted, and it will be convert the array to a string and return it.
=end

def fake_name (full_name)

  word_of_name=full_name.split (" ")
  swapping_name = word_of_name.reverse
  string_swapping_name=swapping_name.join(" ")
  letters=string_swapping_name.chars
  fake_letter=[]
  idx=0
  while idx < letters.length

     letter=letters[idx]
    if letter.downcase=="a" || letter.downcase=="e" ||letter.downcase=="i" ||letter.downcase=="o" || letter.downcase=="u"
         if letter=="a"
           fake_letter << "e"
         elsif letter=="e"
           fake_letter << "i"
         elsif letter == "i"
           fake_letter << "o"
         elsif letter== "o"
           fake_letter << "u"
         elsif letter == "u"
           fake_letter << "a"
         end
      elsif letter=="z"
           fake_letter << "b"
      elsif letter=="d"
           fake_letter << "f"
      elsif letter=="h"
           fake_letter << "j"
      elsif letter=="n"
           fake_letter << "p"
      elsif letter=="t"
           fake_letter << "v"
      elsif letter=="Z"
           fake_letter << "B"
      elsif letter=="D"
           fake_letter << "F"
      elsif letter=="H"
           fake_letter << "J"
      elsif letter=="N"
           fake_letter << "P"
      elsif letter=="T"
           fake_letter << "V"
      elsif letter==" "
           fake_letter << " "
      else
        fake_letter << letter.next
      end
      idx+=1
    end
       return fake_letter.join (" ")
  end

  arr_full_name=[]
  loop do
      puts "Please enter your First name first then Last name, when you done type \"quit\"."
        name = gets.chomp
        break if name =="quit"
        arr_full_name<<name
      end
      full_name = arr_full_name.join (" ")
      puts "Here is what the user type in: #{full_name}"

 p fake_name(full_name)
