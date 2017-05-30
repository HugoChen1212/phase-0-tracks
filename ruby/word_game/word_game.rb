# create a word game class
# method to create initialize
  # input: atrributes
  # steps:
    #initialize atrributes
  #output: initialize atrributes

# method to create play_game
  # input: word, letter
  # steps:
    # Ask user to get word
      # get word from user
    # create and set the default into the list
    # set the limited number of guessing
    # Ask player to guess letter
      # get player's letter
    # IF letter include in the word
    # convert the string to list
    # then iterate through the word
      # IF split_word's letter == player's letter
        # set into the list with the correct position and letter
    # print out the list and convert to string
    # IF not include the letter
      # it will print a message "Please try again!"
    # return list and convert to string
  # output: string


class Word_game
    attr_reader :guess_count
  def initialize
      @guess_count = 0
      @correct_letter = []
  end

  def play_game (word)
    @correct_letter = Array.new(word.length,"_")
        idx=0
    while idx < word.length
       puts "Other user please guess your letter."
        letter = gets.chomp
      if word.include? (letter)
         @guess_count+=1
          arr_word = word.split("")
          idx2 =0
          while idx2 < arr_word.length
             if arr_word[idx2] == letter
                @correct_letter[idx2] = letter
              end
              idx2+=1
         end
            p @correct_letter.join("")
      else
          puts "Please try again!"
      end
      idx+=1
   end
    return @correct_letter.join ("")
  end
end


puts "User pleae enter your word here."
  word = gets.chomp
game = Word_game.new
 game.play_game(word)
puts "You won in #{game.guess_count} guesses!"
if game.guess_count==word.length
  puts "You win the game!"
end