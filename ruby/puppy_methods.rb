class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    puts "Woof!" * num
  end

 end

  dog = Puppy.new
  dog.fetch("ball")
  dog.speak(3)