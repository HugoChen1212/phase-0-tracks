class Puppy

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

  dog = Puppy.new
  dog.fetch("ball")
  dog.speak(3)
  dog.roll_over
  p dog.dog_years(4)
  dog.play_dead