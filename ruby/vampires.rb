#ask how employees need to be processed
puts "How many employees will be processed?"

#convert employees to integer
employees = gets.chomp.to_i

#set is_vampire to false
is_vampire = false

#set count to 0
count = 0

#Process multiple employees by counting up until count = employees
while count < employees
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

#If the employee got their age right, doesn't want garlic bread but will sign up for insurance, the result is “Probably not a vampire.”
    if correct_age && (likes_garlic == false || want_insurance)
      is_vampire = "probably not a vampire."
    end

#If the employee got their age right, and is willing to eat garlic bread but doesn't want insurance, the result is “Probably not a vampire.”
    if correct_age && (likes_garlic || want_insurance == false)
      is_vampire = "probably not a vampire."
    end

#If the employee got their age wrong, likes garlic bread but waives insurance, the result is “Probably a vampire.”
    if correct_age == false && (likes_garlic || want_insurance == false)
      is_vampire = "probably a vampire."
    end

#If the employee got their age wrong, hates garlic bread but wants insurance, the result is “Probably a vampire.”
    if correct_age == false && (likes_garlic == false || want_insurance)
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

#set empty array to capture allergies
allergies = []

#Have employee list all allergies. Checking for "sunshine". typing "done" will stop program
allergy = ""
puts "Please list any allergies you may have. When finished type 'done'."
while allergy.upcase != "DONE"
allergy = gets.chomp
  if allergy.upcase == "SUNSHINE"
    allergies.push(allergy)
    allergy = "DONE"
    is_vampire = "probably a vampire."
  else
   allergies.push(allergy)
  end
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

if allergies.pop.upcase == "SUNSHINE"
  puts "This employee is allergic to sunshine!"
else
  puts "Allergies: #{allergies.join(', ')}"
end

if is_vampire == false 
  puts "Results inconclusive. We can't tell if this employee is a vampire."
else
  puts "This employee is #{is_vampire}"
end

#increase count by one 
count += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

#added comment for pull request to get code review

  
