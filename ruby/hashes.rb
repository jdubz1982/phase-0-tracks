#create hash client_info with values to be updated by user
client_info = {
   full_name: "",
   city: "",
   age: "",
   number_children: "",
   decor_theme: "",
   is_house_over_100yrs_old: ""
}

#ask user to input data
puts "Please enter the following data:"

#loop through hash and ask user to input data
client_info.each {|client_key,client_value|
  puts "Please enter #{client_key}:"
    client_info[client_key] = gets.chomp
}

#define method to update hash values by data type
def update_data_type(client_data)
  client_data.each {|client_key, client_value|
#check for data that should be integers
  if client_key == :age || client_key == :number_children
    client_data[client_key] = client_value.to_i
#check for data that should be true or false
  elsif client_key == :is_house_over_100yrs_old
    if client_value == "yes" || client_value == "y" || client_value == true
      client_data[client_key] = true
    else
      client_data[client_key] = false
    end 
  else 
     client_data[client_key] = client_value 
  end
}
end

#call update data method on client_info
update_data_type(client_info)

#print out results to user
puts "You have entered the following information:"
 client_info.each {|client_key,client_value|
   puts "#{client_key}: #{client_value}"
 } 

#ask user if everything looks correct and allow user to update data if they need to
puts "Does this information look correct? (y/n)"

if gets.chomp.downcase == "n" || gets.chomp.downcase == "no"
   #ask user to pick something to update
   puts "Please choose something to update:"
    client_info.each {|client_key,client_value|
      puts "#{client_key}"
    }
   #get user input
    key = gets.chomp
    puts "Please update #{key}"
    value = gets.chomp
    client_info[key.to_sym] = value

    #call update_data_type method to update data types again
    update_data_type(client_info)

    puts "Your updated information is:"
    client_info.each {|client_key,client_value|
     puts "#{client_key}: #{client_value}"
    } 
end
    
puts "Thank you, we will save your input."





