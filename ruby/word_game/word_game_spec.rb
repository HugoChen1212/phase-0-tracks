require_relative 'word_game'

describe Guess_word do
  let(:guess_word) {Guess_word.new("hugo")}

  describe "initialize" do
 it "initialize the word" do
    expect(guess_word.word). to eq ("hugo")
 end
 it "initialize the guess_count" do
    expect(guess_word.guess_count). to eq (0)
 end

 it "initialize the array" do
    expect(guess_word.correct_letter). to eq (["_","_","_","_"])
 end
 end
  describe "play_game" do
    it "return the letter if guess right" do
      expect(guess_word.play_game("h")).to eq("h___")
    end

    it "return the letter if guess right" do
     expect(guess_word.play_game("u")).to eq("_u__")
    end

    it "return the letter if guess right" do
      expect(guess_word.play_game("g")).to eq("__g_")
    end

    it "return the letter if guess right" do
      expect(guess_word.play_game("o")).to eq("___o")
    end

    it "if the letter guess wrong" do
      expect(guess_word.play_game("i")).to eq("____")
    end
  end

  describe "check_letter" do
    it "return an array with the correct guess letter" do
      letter=["h", "u","g","o"]
      expect(guess_word.check_letter(letter,"h")).to eq(["h","_","_","_"])
    end
  end
end
