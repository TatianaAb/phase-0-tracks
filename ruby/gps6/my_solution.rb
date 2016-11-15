# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
# Allows us to load a file that has data that is relative to the file that we are working on. 
#
require_relative 'state_data'
class VirusPredictor
  ### Defines default values of an instance of VirusPredictor class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  ### Calls both the predicted deaths and speed_of_spread methods at once.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
private
  ### predicts number of deaths based on population density.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"
  end
  ### Calculates speed of spread per each state based on its population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
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
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do | state, state_info |
  prediction = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  prediction.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown
#  in the state_data file?
#   One hash has a string keys and '=>' pointing to value and a another 
#   has a symbol keys and ':' between key-value pair. Both syntaxes are valid but ':'
#   can be used with symbol keys only.

# What does require_relative do? How is it different from require?
#   require_relative allows us to use data from external files indicating 
#   path to required file. Require_relative is more convinient way then Require 
#   which requires an absolute path (i.e. starts with / or ./ or ../).  

#   use code block methods or loop

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#    I was not sure why we have this method at all if we can just use 
#    those two methods inside of it one by one

# What concept did you most solidify in this challenge?
#    Concept of using data in external files and use of classes (like private method). 