class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = rand(141)
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho,ho,ho!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}."
  end

  def celebrate_birthday
    @age+=1
  end

  def get_mad_at(name)
    if @reindeer_ranking.include?(name)
    @reindeer_ranking << @reindeer_ranking.delete(name)
    else
    puts "No match name!"
    end
  end
end

# add driver code and test the speak method
# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("snickerdoodle")


# add driver code for ethnicity and age, and test the access ability
=begin
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

santas.each do |santa|
  puts santa.ethnicity
  puts santa.age
end
=end

# add driver code test get_mad_at and celebrate_birthday method
=begin
ken = Santa.new("male","white")
p ken.get_mad_at("Comet")
p ken.celebrate_birthday
p ken.gender=("female")
=end


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santas = []
100.times do santas << Santa.new(example_genders.sample(1), example_ethnicities.sample(1))
end

santas.each do |santa|
  puts "Santa's genter: #{santa.gender.join("")}
  Santa's ethnicity: #{santa.ethnicity.join("")}
    Santa's age: #{santa.age}"
end