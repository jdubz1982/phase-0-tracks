# Game class takes word and lets user guess each letter
# Define create word to see output of word length ex. "_ _ _ _ _ _"
  # LOOP through word and replace letters with "_" and keep spaces as spaces if there are any
  # Calculate available guesses after counting number of letters in word or phrase

# Define all guesses
  # Add each letter guessed to an array to keep track of letters
  # If letter guessed matches, tell user that they are correct, subtract 1 from guesses available
  # If letter does not match, tell user they are incorrect, subtract 1 from guesses available
  # Otherwise tell user that they already guessed that letter, do not subtract a guess

# Define letter guesser
  # Loop over game word and replace created word with letter if correct
  # Otherwise leave created word unchanged

# Define word guesser
  # If guessed word equals game word, tell user they won
  # Otherwise tell them they lost

#LOOP the over the following until available guesses equals 0
  # If the letter guessed is in the word, return blank word with correct letter in it
  # Otherwise the user will be asked to guess again or guess the word
  # Available guesses will decrease by 1 UNLESS they already guessed that letter
#LOOP will break if user requests to guess the word

# Once count of guesses reaches 0, user will be required to guess word
# If the word the user guessed matches game word
  # User gets congratulatory message
  # Otherwise will get taunting message


class WordGuess
  attr_reader :word, :word_output, :guess_count, :letter_count, :available_guesses

  def initialize(word)
    @word = word.downcase
    @guess_count = []
    @letter_count = 0
    @word_output = ""
    @available_guesses = 0
    create_word_output
  end

  def create_word_output
    @word_output = @word.split(//)
    @word_output.map! do |letter|
      if letter == " "
        letter
      else
        @letter_count += 1
        letter = "_ "
      end 
    end
    
    if @letter_count % 2 != 0
      @available_guesses = (@letter_count / 2) + 1
    else
      @available_guesses = (@letter_count / 2)
    end
    @word_output.join
  end


  def all_guesses(letter)
    if @guess_count.include?(letter) 
      puts "You have already guessed #{letter}. You still have #{@available_guesses} guesses left."
    elsif @word.include?(letter)
      @available_guesses -= 1
      puts "Nice job, the word has #{letter} in it. #{@available_guesses} guesses left."
      @guess_count.push(letter)
    else
      @available_guesses -= 1
      puts "Sorry, #{letter} is not in the word. #{@available_guesses} guesses left."
      @guess_count.push(letter)
    end
  end

  def letter_guess(letter)
    position = 0
    @word.split(//).each do |x|
      if x == letter
      @word_output[position] = letter
      end
      position += 1
    end
    @word_output.join(" ")
  end


  def word_guess(word_guess)
    if word_guess.downcase == @word
      return "Congratulations, #{@word.upcase} is the correct word. You win!"
    else
      return "I'm sorry, you lost. The word is #{@word.upcase}...go read the dictionary."
    end
  end

end


# Driver code
puts "Let's play a game....Enter a word or phrase for User 2 to guess."
game_word = gets.chomp
new_game = WordGuess.new(game_word)
puts "Your word/phrase is #{new_game.letter_count} letters long. You have #{new_game.available_guesses} guesses."
puts new_game.word_output.join

loop do
puts "Please guess a letter or the word."
guess = gets.chomp.downcase
  if guess.length > 1
  puts "Your guess is more than one letter, do you want to guess the word? (y/n)"
    answer = gets.chomp.downcase
    if answer == "y" || answer == "yes"
      puts new_game.word_guess(guess)
      exit
    end
  else
    new_game.all_guesses(guess)
    puts new_game.letter_guess(guess)
  end
break if new_game.available_guesses == 0
end

puts "You have run out of guesses. Guess the word."
puts new_game.word_guess(gets.chomp)
