class Santa
  attr_accessor :gender, :ethnicity

  def initialize (gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(141)
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho,ho,ho! Haaaappy holidays! Your gender is #{@gender} and your ethnicity is #{@ethnicity}."
  end

  def eat_milk_and_cookies (cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age+=1
      puts "We celebrate birthday by #{@age} year."
  end

  def get_mad_at (reindeer_name)
    @reindeer_ranking << @reindeer_ranking.delete(reindeer_name)
  end

  def get_gender
     @gender
  end

  def get_ethnicity
    @ethnicity
  end

  def set_gender=(new_gender)
      @gender = new_gender
  end

  def set_ethnicity=(new_ethnicity)
      @ethnicity = new_ethnicity
  end

   def print_santa
    puts "Santa attributes are: #{@gender},  #{@ethnicity}, #{@reindeer_ranking}, and #{@age}"
  end
end

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
=begin
santas.each do |santa|
  santa.speak end
santas.each do |santa|
  santa.celebrate_birthday end
santas.each do |santa|
  puts santa.get_mad_at("Vixen") end
santas.each do |santa|
  puts santa.gender end
santas.each do |santa|
  puts santa.gender=("male") end
santas.each do |santa|
  puts santa.ethnicity end
santas.each do |santa|
  puts santa.ethnicity=("black") end

  agender_arr = []
santas.each do |santa|
  agender_arr << santa.gender end
p agender_arr

ethnicity_arr= []
santas.each do |santa|
  ethnicity_arr << santa.ethnicity end
p ethnicity_arr


new_santas = []
10.times do |i|
  new_santas << Santa.new(agender_arr.sample(1),ethnicity_arr.sample(1)) end

new_santas.each do |santa|
puts santa.ethnicity end

new_santas.each do |santa|
puts santa.gender end
=end

santas.each do |santa|
  puts santa.print_santa end