#asks user for hamster's name
puts "What is your hamster's name?"
name = gets.chomp

#asks user how squeaky your hamster is
puts "How squeaky is your hamster? (1-10...10 being the loudest)"
volume = gets.chomp.to_i

#asks user what color fur the hamster has
puts "What color fur does your hamster have?"
fur_color = gets.chomp

#asks user if hamster is a good candidate for adoption converts to boolean
puts "Is your hamster a good candidate for adoption? (y/n)"
adoption = gets.chomp.upcase

if adoption == "Y"
  adoption = true
else
  adoption = false
end

#asks user for estimated age, if none given sets age to nil
puts "What is the estimated age of your hamster?"
age = gets.chomp

if age == ""
  age = nil
else
  age.to_f
end

#prints hamsters name
puts "Your hamster's name is #{name}."

#prints hamsters squeak volume
puts "Your hamster's squeak volume is #{volume}."

#prints hamsters fur color
puts "Your hamster has #{fur_color} fur."

#checks to see if hamster is a good candidate for adoption
if adoption
  puts "Your hamster is a good candidate for adoption!"
else 
  puts "Sadly, your hamster is not a good candidate for adoption."
end

#checks to see if user specified the hamsters age
if age == nil
  puts "You did not specify your hamster's age."
else
  puts "Your hamster is #{age} years old."
end

#thank the user for their input
puts "Thank you for your information!"

