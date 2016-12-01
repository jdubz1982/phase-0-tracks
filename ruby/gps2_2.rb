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

