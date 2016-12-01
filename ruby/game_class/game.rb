# Game class takes word and lets user guess each letter
# User sees output of word length ex. "_ _ _ _ _ _"
# User has a specific amount of guesses before asked they must guess the word
#LOOP the over the following until available guesses equals 0
  # If the letter guessed is in the word, return blank word with correct letter in it
  # Otherwise the user will be asked to guess again or guess the word
  # Count of guesses will decrease by 1 UNLESS they already guessed that letter
#LOOP will break if user requests to guess the word
# Once count of guesses reaches 0, user will be required to guess word
# If the word the user guessed matches
  # User gets congratulatory message
  # Otherwise will get taunting message

  class WordGuess
  attr_reader :word, :guess_count

  def initialize(word)
    @word = word.downcase
    @word_output = ("_ " * @word.length.to_i).split
    @guess_count = []
    puts "Your word is #{@word.length.to_i} letters long. You have #{@word.length.to_i - 2} guesses."
    puts "#{"_ " * @word.length.to_i}"
  end


  def user_guesses(letter)
    @guess_count.push(letter)
  end

  def letter_guess(letter)
    position = 0

    @word.split(//).each do |x|
      if x == letter
      @word_output[position] = letter
      end
      position += 1
    end

    if @word.include?(letter)
      puts "Nice job, the word has #{letter} in it."
    else
      puts "Sorry, #{letter} is not in the word."
    end

    puts @word_output.join(" ")
  end

  def word_guess(word_guess)
    if word_guess.downcase == @word
      puts "Congratulations, #{@word.upcase} is the correct word. You win!"
    else
      puts "I'm sorry, you lost. The word is #{word.upcase}...go read a dictionary."
    end
  end

end