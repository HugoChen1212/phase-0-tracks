class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    puts "Woof!" * num
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(years)
    years * 7
  end

  def play_dead
    puts "plays dead"
  end

 end

=begin
  dog = Puppy.new
  dog.fetch("ball")
  dog.speak(3)
  dog.roll_over
  p dog.dog_years(4)
  dog.play_dead
=end

class Air_plane
  def initialize
    puts "Initializing new air plane instance."
  end

  def take_off
    puts "take off!"
  end

  def land
    puts "land it."
  end

end

 boey = Air_plane.new
 # p boey

 air_planes = []

 50.times do
  new_plane = Air_plane.new
  air_planes << new_plane
 end
