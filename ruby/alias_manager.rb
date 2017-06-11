# Method to create fake_name
# input: string
# steps:
  # swap the first and last name
  # interate each letter in the swap full name
  # create a data structure to store outcome
  # IF letter contain vowel
    #call next_vowel method
  # IF letter not contain vowel
    #call next_unvowel method
  # return the data structure
# output: string

# Method to find the next vowel
# input: letter
#setps:
  # Create a vowel list
  # check If letter contain in vowel
  # If yes will find the position of letter in the vowel list and update to next vowel
#return letter
# output: letter

# Method to find the next consonates
# input: letter
#setps:
  # Create a consonates list
  # check If letter contain in consonates
  # If yes will find the position of letter in the consonates list and update to next vowel
#return letter
# output: letter

def fake_name (full_name)
  words_array = full_name.split (" ")
  swap_name_array = words_array.reverse
  swap_name = swap_name_array.join(" ")
  letters = swap_name.chars
  fake_letters = []
   letters.each do |letter|
    vowel = %w[a A e E i I o O u U]
    if vowel.include?(letter)
       fake_letters << next_vowel(letter)
    elsif letter == " "
       fake_letters << " "
    else
       fake_letters << next_unvowel(letter)
    end
end
    return fake_letters.join ("")
end

def next_vowel (vowel_char)
   vowel ="aeiou"
   capital_vowel = "AEIOU"
   if vowel_char == "u"
      return "a"
   elsif vowel_char == "U"
      return "A"
   else
      if capital_vowel.include?(vowel_char)
      idx_vowel =capital_vowel.index(vowel_char)
      next_idx = idx_vowel + 1
      return capital_vowel[next_idx]
      else
      idx_vowel =vowel.index(vowel_char)
      next_idx = idx_vowel + 1
      return vowel[next_idx]
      end
  end
end

def next_unvowel (unvowel_char)
    vowels = %w[a e i o u]
    alphabet = ("a".."z").to_a
    consonates_arr = alphabet - vowels
    consonates = consonates_arr.join ("")
    upcase_consona = consonates.upcase
  if unvowel_char == "z"
      return "b"
  elsif unvowel_char == "Z"
      return "B"
  else
       if upcase_consona.include? (unvowel_char)
          idx_consonates =upcase_consona.index(unvowel_char)
          next_idx = idx_consonates + 1
          return upcase_consona[next_idx]
        else
          idx_consonates =consonates.index(unvowel_char)
          next_idx = idx_consonates + 1
          return consonates[next_idx]
        end
    end
end

p fake_name("Felicia Torres")

  arr_full_name=[]
  loop do
      puts "Please enter your First name then Last name, when you done type \"quit\"."
        name = gets.chomp
        break if name =="quit"
        arr_full_name<<name
      end
      arr_full_name.each do |name|
      puts "#{fake_name(name)} is actually #{name}"
    end