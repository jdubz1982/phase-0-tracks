require_relative 'game'

describe WordGuess do
  let(:new_game) { WordGuess.new("apple pie") }

  it "converts a word to '_'" do
    expect(new_game.create_word_output).to eq "_ _ _ _ _  _ _ _ "
  end

  it "converts'_' to letter guessed" do
    expect(new_game.letter_guess("p")).to eq "_  p p _  _    p _  _ "
  end

  it "gives win or lose message after word guess" do
    expect(new_game.word_guess("apple pie")).to eq "Congratulations, APPLE PIE is the correct word. You win!"
  end

  it "it will push letter guessed into an array" do
    expect(new_game.all_guesses("p")).to eq ["p"]
  end
end