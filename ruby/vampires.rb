puts "How many employees will be processed?"
employees = gets.chomp.to_i
is_vampire = false

#Gather information from potential employees
#Asks for name
    puts "What is your full name?"
    name = gets.chomp

#Asks for age
    puts "How old are you?" 
    age = gets.chomp.to_i

#Ask for year born
    puts "What year were you born?"
    year_born = gets.chomp.to_i

#Ask if likes garlic bread. Checks for y or yes and upcases input
    puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
    garlic_bread = gets.chomp.upcase
    if garlic_bread == "Y" || garlic_bread == "YES"
       likes_garlic = true
    else
       likes_garlic = false
    end

#Ask if wants insurance. Checks for y or yes and upcases input
    puts "Would you like to enroll in the company's health insurance? (y/n)"
    insurance = gets.chomp.upcase

    if insurance == "Y" || insurance == "YES"
      want_insurance = true
    else
      want_insurance = false
    end

#Check to see if age matches year employee said they were born
    current_year = Time.new.year

    if age == current_year - year_born
       correct_age = true
    else
       correct_age = false
    end

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
    if correct_age == true && (likes_garlic == true || want_insurance == true)
      is_vampire = "probably not a Vampire."
    end

#If the employee got their age wrong, but likes garlic bread but waives insurance, the result is “Probably a vampire.”
    if correct_age == false && (likes_garlic == true || want_insurance == false)
      is_vampire = "probably a vampire."
    end

#If the employee got their age wrong, but hates garlic bread and wants insurance, the result is “Probably a vampire.”
    if correct_age == false && (likes_garlic == false || want_insurance == true)
      is_vampire = "probably a vampire."
    end

#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
    if correct_age == false && (likes_garlic == false && want_insurance == false)
      is_vampire = "almost certainly a vampire."
    end

#If name is Drake Cula or Tu Fang employee is “Definitely a vampire.”
    if name == "Drake Cula" || name == "Tu Fang"
      is_vampire = "definitely a vampire."
    end

#Print out employee input and if the employee is vampire
puts "Full Name: #{name}"
puts "Age: #{age}"
puts "Year born: #{year_born}"

if correct_age
  puts "Employee's age matches year born."
else
  puts "Employee's age does not match year born."
end

if likes_garlic 
  puts "Employee likes garlic bread."
else
  puts "Employee does not like garlic bread"
end

if want_insurance
  puts "Employee wants insurance."
else
  puts "Employee does not want insurance"
end

if is_vampire == false 
  puts "Results inconclusive. We can't tell if this candidate is a vampire."
else
  puts "This candidate is #{is_vampire}"
end





  
