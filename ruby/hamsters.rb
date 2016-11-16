name = gets.chomp

puts "How squeaky is your hamster? (1-10...10 being the loudest)"
volume = gets.chomp 

puts "What color fur does your hamster have?"
fur_color = gets.chomp

puts "Is your hamster a good candidate for adoption? (y/n)"
adoption = gets.chomp.upcase

puts "What is the estimated age of your hamster?"
age = gets.chomp

if age == ""
  age = nil
end

p age 