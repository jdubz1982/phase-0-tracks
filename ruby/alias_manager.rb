#define method at thats a real_name and converts it to alias

#def method to convert vowels
def convert_vowels(real_name)
  name_array = real_name.downcase.split(//)
  name_array.map! do |letter|
  vowels = ["a", "e", "i", "o", "u"]
  #loop through vowels to see if contains letters from real name
  if vowels.include?(letter)
  #add 1 to real name index location to get next vowel
  location = vowels.index(letter) + 1
    #check for u vowel
    if vowels[location] == nil
      letter = "a"
    else 
      letter = vowels[location]
    end
  else
    letter = letter
  end
    
end
  name_array.join
end

#def method to convert consonants
def convert_consonant(real_name)
  name_array = real_name.downcase.split(//)
  name_array.map! do |letter|
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  #loop through consonants to see if contains letters from real name
  if consonants.include?(letter)
  #add 1 to real name index location to get next consonant 
  location = consonants.index(letter) + 1
    #check for z 
    if consonants[location] == nil
      letter = "b"
    else 
      letter = consonants[location]
    end
  else
    letter = letter
  end
    
end
  name_array.join
end

#capitalize the first letter of first and last name
def capitalize_name(name)
  capital_array = name.split(" ")
  capital_array.map! do |cap_name|
     cap_name.capitalize!
  end
  capital_array.join(" ")
end

#def alias_manager to convert vowels and consonants and reverse name
def alias_manager(real_name)
  vowel_name = convert_vowels(real_name)
  consonant_vowel_name = convert_consonant(vowel_name)
  new_name = capitalize_name(consonant_vowel_name)
  new_name.split.reverse.join(' ')
end

#p alias_manager("Felicia Torres")

#create user interface so multiple names can be entered and converted
#set new hash to collect input
all_alias = {}
puts "Please enter a name to covert to an alias:"
real_name = gets.chomp
alias_manager(real_name)
all_alias.store(real_name, alias_manager(real_name))
until real_name == "quit" || real_name == "q"
puts "Enter another name or type 'quit or 'q' to exit:"
real_name = gets.chomp
all_alias.store(real_name, alias_manager(real_name))
end

all_alias.delete_if { |k, v| k == "q"}
all_alias.delete_if { |k, v| k == "quit"}

#print each alias and what the real name is
all_alias.each do |real_name, convert_name|
  puts "The alias #{convert_name} is actually #{real_name}."
end


