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
client_info.each {|k,v|
  puts "Please enter #{k}:"
    client_info[k] = gets.chomp
}

#define method to update hash values by data type
def update_data_type(x)
  x.each {|k, v|
#check for data that should be integers
  if k == :age || k == :number_children
    x[k] = v.to_i
#check for data that should be true or false
  elsif k == :is_house_over_100yrs_old
    if v == "yes" || v == "y" || v == true
      x[k] = true
    else
      x[k] = false
    end 
  else 
     x[k] = v  
  end
}
end

#call update data method on client_info
update_data_type(client_info)

#print out results to user
puts "You have entered the following information:"
 client_info.each {|k,v|
   puts "#{k}: #{v}"
 } 

#ask user if everything looks correct and allow user to update data if they need to
puts "Does this information look correct? (y/n)"

if gets.chomp.downcase == "n" || gets.chomp.downcase == "no"
   #ask user to pick something to update
   puts "Please choose something to update:"
    client_info.each {|k,v|
      puts "#{k}"
    }
   #get user input
    key = gets.chomp
    puts "Please update #{key}"
    value = gets.chomp
    client_info[key.to_sym] = value

    #call update_data_type method to update data types again
    update_data_type(client_info)

    puts "Your updated information is:"
    client_info.each {|k,v|
     puts "#{k}: #{v}"
    } 
end
    
puts "Thank you, we will save your input."





