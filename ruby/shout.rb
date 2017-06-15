=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily
    puts "I am so happy!"
  end
end
p Shout.yell_angrily("Hugo")
p Shout.yelling_happily
=end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily (words)
    puts "#{words}!"
  end
end

class Dog
  include Shout
end

class People
  include Shout
end

dog = Dog.new
people = People.new
p dog.yell_angrily("Woof")
p dog.yell_angrily("Woof Woof Woof")
p people.yell_angrily("What the")
p people.yelling_happily("I am so happy")


