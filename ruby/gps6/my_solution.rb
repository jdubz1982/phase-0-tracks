# Virus Predictor

# I worked on this challenge [by myself, with: Larry Cherry].
# We spent [1.25] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require 'pry'
require_relative 'state_data'

class VirusPredictor
#Pulls in Data from state_data and initializes some instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Call upon the methods in the private methods: predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
 #Runs some if statements comparing population  with number of potential deaths
  def predicted_deaths
    # predicted deaths is solely based on population density

    death_factor = 0.05
    case @population_density
    when (200..10000000000) then death_factor = 0.4
    when (150..199) then death_factor = 0.3
    when (100..149) then death_factor = 0.2
    when (50..99) then death_factor = 0.1
    end

=begin
    if @population_density >= 200
      death_factor = 0.4
      # number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      death_factor = 0.3
      #number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      death_factor = 0.2
      # number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      death_factor = 0.1
      # number_of_deaths = (@population * 0.1).floor
    else
      death_factor = 0.05
      # number_of_deaths = (@population * 0.05).floor
    end
=end
    print "#{@state} will lose #{(@population * death_factor).floor} people in this outbreak"

  end
#Uses population desity to determine speed of spread using if statements
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0
    case @population_density
    when (200..10000000000) then speed = 0.5
    when (150..199) then speed = 1
    when (100..149) then speed = 1.5
    when (50..99) then speed = 2
    else
      speed = 2.5
    end
    # binding.pry


=begin
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
=end
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population_data|
  state = VirusPredictor.new(state, population_data[:population_density], population_data[:population])
  state.virus_effects
end

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The hash in the state_data file uses both hash rockets and symbols. Symbols are more efficient in terms of memory 
# Hash rockets are used when the key should be user friendly and the user will be seeing the keys

# What does require_relative do? How is it different from require?
# Require_relative is used to load data that you created and is stored in the same directory as the program file. 
# Its only used to files
# Require starts from the load path and is typically used for loading ruby extensions and libraries

# What are some ways to iterate through a hash?
# The method each is the most useful way that I've used to iterate through a hash

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# They were instance variables already declared on initialization and are available throughout the instance, so the function didn't need them as parameters
# What concept did you most solidify in this challenge?
# I think this challenge helped most with refactoring code with case statements and adhering to DRY
