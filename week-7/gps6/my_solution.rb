# Virus Predictor

# I worked on this challenge with: Lisa Dannewitz.
# We spent 1.25 hours on this challenge.

# EXPLANATION OF require_relative
# Require relative links data from another file. The difference between require_relative and require is that when you use require_relative, the linked files are in the same directory. When you use require, it will search the entire application, so you will need to specify the path to the file you want to link to.

#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

# STATE_DATA is a hash. It's a variable type called a constant. It has a global scope. The keys are strings and the values are another hash. That's probably why it's referred to as a hashy-hash. It contains the population density and population data for each state.


require_relative 'state_data'


class VirusPredictor


# Initialize creates instance variables with 3 arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


# Calling the predicted_deaths and speed_of_spread methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# Sets everything following to private, meaning they can't be called by outside objects.
  private

# Calculates the predicted number_of_deaths based on population_density and population.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      death_intensity = 0.4
    elsif @population_density >= 150
      death_intensity = 0.3
    elsif @population_density >= 100
      death_intensity = 0.2
    elsif @population_density >= 50
      death_intensity = 0.1
    else
      death_intensity = 0.05
    end
    number_of_deaths = (@population * death_intensity).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Calculates speed_of_spread based on population density.
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


STATE_DATA.each do |state,nums|
  states = VirusPredictor.new(state, nums[:population_density], nums[:population])
  states.virus_effects
end




#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One is using a string as a key and the other is using a symbol.

# What does require_relative do? How is it different from require?
# Require relative links data from another file. The difference between require_relative and require is that when you use require_relative, the linked files are in the same directory. When you use require, it will search the entire application, so you will need to specify the path to the file you want to link to.

# What are some ways to iterate through a hash?
# "Each" and "map" are probably the most common ways, but not always the most DRY. There are a number of other hash and enumerable methods that apply very well to specific situations. for instance, you can use "select" to return a new hash containing elements for which the block returns true. Or you can use "select!" to get the elements that evaluate to false.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Just that they were instance variables, so it was redundant to keep pulling them into each method as arguments.

# What concept did you most solidify in this challenge?
# Honestly, I think that since we started using classes, I've been subconsciously viewing driver code more like user input. That everything you want to do should be contained within the class and you should just pass arguments to the class in the driver code. Obviously that was not a good way to look at it. This assignment helped solidfy that concept for me.