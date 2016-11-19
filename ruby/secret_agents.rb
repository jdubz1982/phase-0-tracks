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
    puts new_str
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
    puts new_str
  end
  
puts encrypt("abc") 
puts encrypt("zed") 
puts decrypt("bcd") 
puts decrypt("afe")

