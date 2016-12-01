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