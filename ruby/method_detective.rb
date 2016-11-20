# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
puts "iNvEsTiGaTiOn".swapcase == "InVeStIgAtIoN"

# "zom".<???>
# => “zoom”
puts "zom".gsub(/o/,"oo") == "zoom"
puts "zom".sub(/o/,"oo") == "zoom"
puts "zom".insert(1,"o") == "zoom"
puts "zom".insert(2,"o") == "zoom"

# "enhance".<???>
# => "    enhance    "
puts "enhance".center(15) ==  "    enhance    "

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
puts "Stop! You’re under arrest!".upcase == "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"
puts "the usual".insert(-1, " suspects") == "the usual suspects"
puts "the usual".replace("the usual suspects") == "the usual suspects"

# " suspects".<???>
# => "the usual suspects"
puts " suspects".insert(0, "the usual") == "the usual suspects"
puts " suspects".replace("the usual suspects") == "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
puts "The case of the disappearing last letter".chop == "The case of the disappearing last lette"
puts "The case of the disappearing last letter"[0..-2] == "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
puts "The mystery of the missing first letter".gsub(/T/, "") == "he mystery of the missing first letter"
puts "The mystery of the missing first letter".sub(/T/, "") == "he mystery of the missing first letter"
puts "The mystery of the missing first letter"[1..-1] == "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
puts "Elementary,    my   dear        Watson!".squeeze(' ') == "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
puts "z".codepoints.join.to_i == 122 
#ASCII code 122 = z

# "How many times does the letter 'a' appear in this string?".<???>
# => 4
puts "How many times does the letter 'a' appear in this string?".count('a') == 4

