class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender

  # Getter methods
  # def age
  #   @age 
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # Setter methods
  # def gender=(new_gender)
  #   @gender = new_gender
  # end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!" 
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete(reindeer_name))
  end

end

# Create many Santas
# Randomly select a gender and ethnicity, hated reindeer, and cookie from arrays
# Set age of each Santa to a random number between 0 and 140
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
available_reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
available_cookies = ["chocolate", "snickerdoodle", "peanut butter", "oreo"]

# Ask user to enter how many santas they would like to create, ask until they give answer 100 or less
valid_answer = false
until valid_answer == true
puts "How many Santas do you want to create? Ex. (1-100)"
number_santas = gets.chomp.to_i

  if number_santas > 100
    puts "That is too many Santas!"
    valid_answer = false
  else
    number_santas.times do |x|
    santa = Santa.new(example_genders.sample, example_ethnicities.sample)
    santa.speak
    puts "Santa number #{x + 1} attributes are:"
    puts "Age: #{santa.age}"
    puts "Gender: #{santa.gender}"
    puts "Ethnicity: #{santa.ethnicity}"
    santa.eat_milk_and_cookies(available_cookies.sample)
    puts "Favorite to least favorite reindeer:"
    p santa.get_mad_at(available_reindeer.sample)
    puts "Santa had a birthday and is now #{santa.celebrate_birthday} years old!"
    end
   valid_answer = true
  end
end

  












# Test code for earlier releases

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("chocolate chip")
# puts ""

=begin
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
p santas
=end

=begin
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities.sample)
end

p santas
=end

=begin
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
klaus = Santa.new(example_genders.sample, example_ethnicities.sample)
p klaus
klaus.age
klaus.ethnicity
puts "----------"
klaus.celebrate_birthday
klaus.get_mad_at("Rudolph")
klaus.gender = "male"
p klaus
=end





