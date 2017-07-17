require_relative "game"

describe Game do
let (:game){Game.new("test")}

 it "creates a word array" do
    expect(game.word).to eq(["t","e","s","t"])
  end

  it "Checks if letter is included in array" do
    expect(letter_check.word).to eq(true)
    game.letter_check("t")
end


