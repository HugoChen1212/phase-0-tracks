=begin
SPECIES ------------------
Puppy

CHARACTERISTICS -------------
Name: varies
Color: varies
Friendly: yes
leg count: 4
Age: varies

BEHAVIOR -------------------
Bark
Jump
Wagging the tail
=end

class Puppy
  def initialize (name, color, friendly, leg_count, age)
    @name = name
    @color = color
    @friendly = friendly
    @leg_count = leg_count
    @age = age
  end
  def bark
    puts "Wow! Wow!"
  end
  def jump

  end
  def wagging_the_tail

  end
end