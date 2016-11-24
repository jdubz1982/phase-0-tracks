#define method that takes a real name and converts it to alias
#alias method will convert real name vowels to the next vowel in an array of vowels
#alias method then converts real name consonants to next consonant in array of consonants
#alias method then converts any number to the next number in a numbers array
#if there are any other characters it will leave them alone ex. ; would be ;
#alias method will capitalize first and last name
#alias method will then reverse the first and last name

#convert vowels
def convert_vowels(real_name)
  name_array = real_name.downcase.split(//)
  name_array.map! do |letter|
  vowels = ["a", "e", "i", "o", "u"]

    if vowels.include?(letter)
      location = vowels.index(letter) + 1
      #check for u 
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

#convert consonants
def convert_consonant(real_name)
  name_array = real_name.downcase.split(//)
  name_array.map! do |letter|
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  
    if consonants.include?(letter)
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

#convert numbers
def convert_numbers(real_name)
  name_array = real_name.downcase.split(//)
  name_array.map! do |letter|
  numbers = ["0","1","2","3","4","5","6","7","8","9"]
    
    if numbers.include?(letter)
    location = numbers.index(letter) + 1
      #check for 9
      if numbers[location] == nil
        letter = "0"
      else
        letter = numbers[location]
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
     cap_name.capitalize
  end
  capital_array.join(" ")
end

#call all methods to create alias
def alias_manager(real_name)
  vowel_name = convert_vowels(real_name)
  consonant_name = convert_consonant(vowel_name)
  number_name = convert_numbers(consonant_name)
  new_name = capitalize_name(number_name)
  new_name.split.reverse.join(' ')
end

#p alias_manager("Felicia Torres") == "Vussit Gimodoe"
#user interface so multiple names can be entered into a hash

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
all_alias.each do |real_name, alias_name|
  puts "The alias #{alias_name} is actually #{real_name}."
end


