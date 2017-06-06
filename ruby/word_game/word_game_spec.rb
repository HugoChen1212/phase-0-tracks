require_relative 'word_game'

describe Word_game do
  let(:word_game) {Word_game.new("hugo")}

  describe "initialize" do
 it "initialize the word" do
    expect(word_game.word). to eq ("hugo")
 end
 it "initialize the guess_count" do
    expect(word_game.guess_count). to eq (0)
 end

 it "initialize the array" do
    expect(word_game.correct_letter). to eq (["_","_","_","_"])
 end
end
describe "play_game" do
 it "return the letter if guess right" do
    expect(word_game.play_game("h")).to eq("h___")
  end

  it "return the letter if guess right" do
    expect(word_game.play_game("u")).to eq("_u__")
  end

  it "return the letter if guess right" do
    expect(word_game.play_game("g")).to eq("__g_")
  end

  it "return the letter if guess right" do
    expect(word_game.play_game("o")).to eq("___o")
  end

   it "if the letter guess wrong" do
    expect(word_game.play_game("i")).to eq("____")
  end

end
end
