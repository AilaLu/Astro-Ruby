module Flyable
  def fly(name)
  puts "I'm #{name}, I believe I can fly"
  end
end

class Animal
  include Flyable
end

turtle = Animal.new
turtle.fly("Mr. turtle")
