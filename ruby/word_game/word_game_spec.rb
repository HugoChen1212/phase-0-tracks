require_relative 'word_game'

describe Word_game do
  let(:word_game) {Word_game.new}

  describe "play_game" do

 it "ask user for word" do
    expect(word_game.play_game("hi")).to eq("Please enter you word here.")
  end
    it "Ask player to guess letter" do
    expect(word_game.play_game("hi")).to eq("Please guess your letter here.")
  end

  it "should convert the word to array" do
    expect(word_game.play_game("hi")).to eq(["h","i"])
  end

  it "print the correct letter" do
    expect(word_game.play_game("hi")).to eq("_i")
  end

  it "Please try again" do
    expect(word_game.play_game("hi")).to eq("Please try again!")
  end

  it "print out all the correct letter " do
    expect(word_game.play_game("hi")).to eq("hi")
  end
end
end
