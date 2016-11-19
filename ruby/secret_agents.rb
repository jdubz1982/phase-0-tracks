#define encrypt with parameter string
  def encrypt(str)
  #declare new string to build on
  new_str = ""
  count = 0
  #do program while count is less letters in string
    while count < str.length
  #search for spaces and add just a space to new string
      if str[count] == " "
        new_str += " "
  #search for z and use a for next letter
      elsif str[count] == "z"
        new_str += "a"
      else
  #add the letter next to the string location
      new_str += str[count].next
      end
      count += 1
    end
    new_str
  end

#define decrypt with parameter string
  def decrypt(str)
# make sure str is all lowercase
  str = str.downcase
# declare new string to build on
  new_str = ""
  count = 0
# string to search for letter location
  letters = "abcdefghijklmnopqrstuvwxyz0123456789"
# loop over the string's letters
    while count < str.length
    # search for a
      if str[count] == "a"
        new_str += "z"
    # search for 0
      elsif ststr = str[count] == "0"
      new_str += "9"
    # search for blank spaces
      elsif str[count] == " "
        new_str += " "
      else
    # find the position of each letter, subtract one and return from letters variable
        new_str += letters[letters.index(str[count]) - 1]
      end
     count += 1
    end
   new_str
  end
  
#Driver code
#should return "bcd"
#puts encrypt("abc")
#should return "afe"
#puts encrypt("zed")
#should return "abc"
#puts decrypt("bcd")
#should return "zed"
#puts decrypt("afe")

#puts decrypt(encrypt("swordfish"))
# This works because it runs what is in the () first. encrypt returns a string
# which is an argument that decrypt can execute on.


#request what method the user would like use
puts "Would you like to decrypt or encrypt your password? (type e for encrypt or d for decrypt)"
program_select = gets.chomp
#until user enters proper method, keep asking
until program_select == "e" || program_select == "encrypt" || program_select == "d" || program_select == "decrypt"
  puts "You did not choose the proper method!"
  puts "Would you like to decrypt or encrypt your password? (type e for encrypt or d for decrypt)"
  program_select = gets.chomp
end

#ask user for password
puts "Please enter a password."
password = gets.chomp

#use if statement to print proper method to string
if program_select == "e" || program_select == "encrypt"
  puts "Your encrypted password is #{encrypt(password)}"
elsif program_select == "d" || program_select == "decrypt"
  puts "Your decrypted password is #{decrypt(password)}"
else
  puts "You did not choose the right method"
end
