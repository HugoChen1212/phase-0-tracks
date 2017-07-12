# Virus Predictor

# I worked on this challenge [by myself, with:Katie McNeil].
# We spent [2.5] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative: allowing you to load a file that is relative to the file contining or can handle the parths relative to current directory. It usually use to ask to retrieve a file from a specific location. We can use require_relative by calling "require_relative 'the_path_of_file_name"

# Require: gives you access to the many extensions and programming libraries bundled with the Ruby programming language-as an even larger number of extensions. We can use require by calling "require 'name_of_the_file"

require_relative 'state_data'

class VirusPredictor
  # initialize the instance variable and attribute value
  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[state_of_origin][:population]
    @population_density = STATE_DATA[state_of_origin][:population_density]
  end

# call the other two methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # create method that calculate and do the predicted of deaths and basedupon the population_density and population
  def predicted_deaths
    # predicted deaths is solely based on population density

    if @population_density >= 200
        rate = 0.4
    elsif @population_density >= 150
        rate = 0.3
    elsif @population_density >= 100
        rate = 0.2
    elsif @population_density >= 50
        rate = 0.1
    else
        rate = 0.05
    end

  number_of_deaths = (@population * rate).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# ccalculate the speed of spread basedupon the population density and population
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

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

STATE_DATA.each_key do |state|
   VirusPredictor.new(state).virus_effects
end

#=======================================================================
# Reflection Section
# Release 8:
# It use two different syntax to write this two hash, one is the old way (""=>""), but user friendly, which is easy to read. The other one is the symbol, which is more efficiency for programmer use.
# Require_relative: allowing you to load a file that is relative to the file contining or can handle the parths relative to current directory. It usually use to ask to retrieve a file from a specific location.
# Require: gives you access to the many extensions and programming libraries bundled with the Ruby programming language.
# Some ways to iterate through a hash are use the method like: each_key, each, and each_value.
# I never thought it can delete the the parameters and argument, and make the code very easy to read. I think refactoring is a very good skill, and I will try use it in the future.
# Except the concept of refactoring others are feeling solidify.