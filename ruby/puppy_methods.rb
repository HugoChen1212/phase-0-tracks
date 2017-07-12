class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak (num)
    puts "Woof!" * num
  end

  def roll_over
    puts "*rolls over*"
  end
  def dog_years (num)
    num * 7
  end
  def walk
    puts "Dog go for walk."
  end

end
=begin
dog = Puppy.new
p dog.fetch("ball")
p dog.speak(5)
p dog.roll_over
p dog.dog_years(2.4)
p dog.walk
=end

class Baseball
  def initialize
    puts "Hello Baseball!"
  end

  def hit (number)
    puts "You hit the ball #{number}."
  end

  def pitch
    puts "You threw the ball."
  end
  end

  baseball_arr =[]
  50.times do  better=Baseball.new
    baseball_arr << better
   end
 baseball_arr.each do |peple|
   peple.hit(10)
   peple.pitch
 end

