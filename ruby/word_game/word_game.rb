# create a word game class
# method to create initialize
  # input: atrributes
  # steps:
    #initialize atrributes
  #output: initialize atrributes

# method to create play_game
  # input: letter
  # steps:
    # IF letter include in the word
    # convert the string to list
    # then iterate through the word
      # IF split_word's letter == player's letter
        # set into the list with the correct position and letter
    # print out the list with the guess right letter and convert to string
    # IF not include the letter
      # it will return a default setting of the array
    # return list and convert to string
  # output: string


class Word_game
    attr_reader :guess_count, :word, :correct_letter
  def initialize (word)
      @word =word
      @guess_count = 0
      @correct_letter = Array.new(word.length,"_")
  end

  def play_game (letter)
      if @word.include? (letter)
         @guess_count+=1
          arr_word = @word.split("")
          idx =0
          while idx < arr_word.length
             if arr_word[idx] == letter
                @correct_letter[idx] = letter
              end
              idx+=1
         end
            p @correct_letter.join("")
      else
          puts "Please try again!"
      end

    return @correct_letter.join ("")
  end
end


puts "User pleae enter your word here."
  word = gets.chomp
game = Word_game.new(word)

word.length.times do
    puts "Other user please guess your letter."
        letter = gets.chomp
        game.play_game(letter)
end

puts "You won in #{game.guess_count} guesses!"
if game.guess_count==word.length
  puts "User enter word is #{game.word}."
  puts "You win the game!"
end
