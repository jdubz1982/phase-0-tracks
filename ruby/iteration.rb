#Release 0: Explore Blocks
#create a method to convert fahrenheit to celcius and pass block into method

def f_to_c 
  puts "Please provide a temperature in Fahrenheit:"
  fahrenheit = gets.chomp.to_i
  celcius = ((fahrenheit - 32) * 5.0/9.0).round(2)
  yield(fahrenheit, celcius)
end

f_to_c { |fahrenheit, celcius| puts "#{fahrenheit} converted to Celcius equals #{celcius} degrees." }


#Release 1: Use each, map, and map!

fruits = ["apples", "oranges", "grapes", "bananas", "pears"]

will_farrell_characters = {
  talladega_nights: "Ricky Bobby",
  elf: "Buddy",
  semi_pro: "Jackie Moon",
  anchorman: "Ron Burgundy"
}

puts "This is the array before we run .each"
p fruits

puts "This is the array after running .each on it"
fruits.each { |fruit| puts fruit }

puts "This is the array befor we run .map!"
p fruits

puts "This is the array after we run .map!"
fruits.map! { |fruit| puts fruit.chop}

puts "This is the hash before we run .each"
p will_farrell_characters

puts "This is the hash after we run .each"
will_farrell_characters.each { |movie, character| puts "Will Farrell plays #{character} in #{movie}"}



#Release 2: Use the Documentation

letters = ["a", "B", "c", "D", "e"]

numbers = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five"
}

#A method that iterates through the items, deleting any that meet a certain 
#condition (for example, deleting any numbers that are less than 5).

p letters.delete_if { |letter| letter.downcase == letter }
p numbers.delete_if { |digit, word| digit < 3}

#A method that filters a data structure for only items that do satisfy a certain 
#condition (for example, keeping any numbers that are less than 5).

letters = ["a", "B", "c", "D", "e"]

numbers = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five"
}

p letters.keep_if { |letter| letter.downcase == letter }
p numbers.keep_if { |digit, word| digit > 3}

#A different method that filters a data structure for only items 
#satisfying a certain condition -- Ruby offers several options!

letters = ["a", "B", "c", "D", "e"]

numbers = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five"
}

p letters.select { |letter| letter.downcase == letter }
p numbers.select { |digit, word| digit > 3}

#A method that will remove items from a data structure until the condition in the block 
#evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

p letters.drop_while { |letter| letter.downcase == letter }
p numbers.drop_while { |digit, word| word != "four"}




