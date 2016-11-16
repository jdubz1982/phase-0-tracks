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
