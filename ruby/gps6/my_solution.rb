# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

require_relative 'state_data'

# EXPLANATION OF require_relative
# require_relative is different than relative in that allows you to call on the file that is relative to current file. # this is in the same directory
# require is used in the spec file to call the ruby code that is being tested # include a file path.

class VirusPredictor

  # initializes an instance of the class with three inputs: state_of_origin, population_density, population --> sets these to instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calling on predicted_deaths and speed_of_spread and returning the outputs.
  def virus_effects
    predicted_deaths_speed
    # speed_of_spread
  end

  private

  # method calculates number of deaths based on population density and returns a statement for each state.
  def predicted_deaths_speed
    # predicted deaths is solely based on population density
    
    speed = 0.0
    
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end
  puts " and will spread across the state in #{speed} months.\n\n"
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  
  end
  # method calculates speed of spread based on the population density and returns a statement stating speed.
  # def speed_of_spread #in months #### ----> REFACTORED INTO METHOD ABOVE.
  #   # We are still perfecting our formula here. The speed is also affected
  #   # by additional factors we haven't added into this functionality.
  #   speed = 0.0

  #   if @population_density >= 200
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     speed += 1
  #   elsif @population_density >= 100
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     speed += 2
  #   else
  #     speed += 2.5
  #   end

  #   puts " and will spread across the state in #{speed} months.\n\n"

  # end

end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, info|
  predictor = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  predictor.virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
### Hashes can be stored in a " key => value" form or "key: value" form.

# What does require_relative do? How is it different from require?
### Require_relative is different than relative in that allows you to call on the file that is relative to current file. The files reside in the same directory.
# Require is used in the spec file to call the ruby code that is being tested. The files may not be in the same directory. You need to include a file path.

# What are some ways to iterate through a hash?
### You can use .each to iterate through each key-value pair. It's important to call on both the key and value pair in the each statement.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
### The variables were instance variables that were already being called into the the methods that were being called on in the virus_effects.

# What concept did you most solidify in this challenge?
### Looping through the hash with .each was the most informative part of the challenge. I learned that the key-value pair must be declared in the each statement.
