# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(groceries)
  list = {}
  groceries.split(" ").each do |item|
    list[item] = 0
  end
  list
end

current_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: pass in hash and set hash key to has value
# output: new hash

def add_item(list, item, quantity=0)
  list[item] = quantity
  list
end

current_list = add_item(current_list, "cheese")

# Method to remove an item from the list
# input: list and item to remove
# steps: call method to delete item from hash
# output: a new hash

def remove_item(list, item)
  list.delete(item)
  list
end

current_list = remove_item(current_list, "apples")


# Method to update the quantity of an item
# input: list, item, new quantity
# steps: use item to update hash with required quantity
# output: new hash

def update_quantity(list, item, quantity)
list[item] = quantity
list
end

#update_quantity(current_list, "carrots", 2)

# Method to print a list and make it look pretty
# input: Current Hash
# steps: Print Statement and then print list. Loop through the hash and print out each item and quantity
# output: A easy to read list of items

def list_output(current_list)
    puts "Your groceries list contains the following..."
    current_list.each do |item, quantity|
    puts "Item #{item}, Quantity #{quantity}"
    end
end

#list_output(current_list)

current_list = create_list('')
current_list = add_item(current_list, "Lemonade", 2)
add_item(current_list, "Tomatoes", 3)
add_item(current_list, "Onions", 1)
add_item(current_list, "Ice Cream", 4)
remove_item(current_list, "Lemonade")
update_quantity(current_list, "Ice Cream", 1)
list_output(current_list)


=begin
puts "What grocery item or items would you like to add to the list?"
grocery_item = gets.chomp
current_list = create_list(grocery_item)

loop do 
  puts "What grocery item or items would you like to add to the list?"
  grocery_item = gets.chomp
  break if grocery_item == "done"
  add_item(current_list, grocery_item)
end

p current_list
=end

# What did you learn about pseudocode from working on this challenge?
# I realized that I still don't pseudocode enough, I tend to just jump into the actual code so 
# I can see if stuff is working. Pseudocode is helpful to get my thoughts down in sublime 
# and work through how I think a program should work
# I have found that my pseudocode isn't always how the program ends up though 
# because sometimes code doesn't work out like I initially thought it would.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Just depends on what type of data you are working with. It was better to use a hash in this challenge
# because we had a list of items but they all had different values. 

# What does a method return?
# A method returns the last expression evaluated in the method 

# What kind of things can you pass into methods as arguments?
# You can pass all types of objects into methods. Hash, array, integers, strings and even other methods. 

# How can you pass information between methods?
# You can pass information between methods by calling a different method in the method definition or even passing
# a method in as a parameter. 

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I feel like I had a good understanding of methods, parameters, and arguments before this challenge
# and it helped make my understanding stronger
# I would say where I am in scope and what variables are available and where can still be confusing. 
# Out guide Ryan helped us work through how to use a variable we already created and call different 
# methods on it.
