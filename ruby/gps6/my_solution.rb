# Virus Predictor

# I worked on this challenge [by myself, with: Carn].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative: is like getting a local file, where require is getting code from some other source.

# require: is like load fild from ruby folder like gem.

require_relative 'state_data'

class VirusPredictor

# initialize the instance variable and attribute value
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# call the other two private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# create method that calculate and do the predicted of deaths and basedupon the population_density and population
  def predicted_deaths
    # predicted deaths is solely based on population density
     rate = case @population_density
    when(200..9999) then 0.4
    when(150..199) then 0.3
    when(100..149) then 0.2
    when(50..99) then 0.1
    else 0.05
    end

    number_of_deaths = (@population * rate).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
   end



# calculate the speed of spread basedupon the population density and population
  def speed_of_spread #in months
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

STATE_DATA.each do |state,population_data|
   VirusPredictor.new(state, population_data[:population_density], population_data[:population]).virus_effects
end

 #===========================================================
 # Reflection Section
 # Release 8:

 # What are the differences between the two different hash syntaxes shown in the state_data file?
 #  It use two different syntax to write this two hash, one is the old way (""=>""), but user friendly, which is easy to read. The other one is the symbol, which is more efficiency for programmer use.

 # What does requre_relative do? How is it different from require?
 #  require_relative: is like getting a local file, where require is getting code from some other source.
 #  require: is like load fild from ruby folder like gem.

 # What are some ways to iterate through a hash?
 #  Some ways to iterate through a hash are use the method like: each_key, each, and each_value.

 # What refactoring virus_effects, what stood out to you about the variables, if anything?
 #  I never thought it can delete the the parameters and argument, and make the code very easy to read. I think refactoring is a very good skill, and I will try use it in the future.

 # What concept did you most solidify in this challenge?
 #  Except the concept of refactoring others are feeling solidify.
