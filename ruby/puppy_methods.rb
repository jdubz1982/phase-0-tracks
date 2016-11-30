
class Puppy
  
  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end

  def speak(times)
    puts "Woof! " * times
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(years)
    puts "Your dog is #{years * 7} years old in dog years!"
  end

  def eats_socks(number)
    puts "Your dog at #{number} socks."
  end

end

dex = Puppy.new
dex.fetch("birds")
dex.speak(3)
dex.roll_over
dex.dog_years(2)
dex.eats_socks(3)

# Create Beer class
  # Initialize method prints pouring a beer
  # Style method
  # Randomly selects a beer from array 
  # Prints what beer you are drinking
  # Drink method 
  # Takes an integer as parameter
  # Prints how many sips you took

class Beer

  def initialize
    puts "Pouring you a beer..."
  end

  def style
    type = ["IPA", "Stout", "Lager", "Pale Ale"]
    beer_style = type.sample
    if beer_style == "IPA"
      puts "You are drinking an #{beer_style} style beer!"
    else
      puts "You are drinking a #{beer_style} style beer!"
    end
  end

  def drink(sips)
    if sips == 1
      puts "You took #{sips} sip."
    else
      puts "You took #{sips} sips."
    end
  end

end

# Create empty array to store Beer instances
all_beers = []

# Create 50 instances and store in array
50.times { all_beers.push(Beer.new) }

# Loop through beer array
  # Prints how each style of beer
  # Prints how many sips you took randomly from 1-10

all_beers.each do |beer|
  puts beer.style
  puts beer.drink(rand(1..10))
end

puts all_beers.length
