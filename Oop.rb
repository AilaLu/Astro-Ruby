#初始化物件 必須要有initialize, 在new就要有相對的argument ;)
class Dog
  def initialize(name, age)
    @name = name
    @age = age
  end
end

p kuma = Dog.new("Kuma", 1)
p roy = Dog.new( "Roy" , 25)
  

#物件導向  #instance method實體方法 
#方法eat作用在物件kitty上
class Cat
  def eat(object)
    return ("#{object} is eating")
  end
  def sleep(object)
    return ("#{object} is sleeping")
  end
end

kitty = Cat.new
p kitty.eat("hello kitty") #-> "hello kitty is eating"
p kitty.sleep("Mimi") #-> "Mimi is sleeping"

#class method 類別方法 （方法作用在類別上）
class Cat 
 def self.all
   puts"全部的貓"
 end

  def self.where
   puts"在哪裡"
 end
end 

Cat.all
Cat.where
