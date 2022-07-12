#用其他檔案的模組: require 
#方法跟函式的不同 在於方法作用在物件上
#.each() .collect() = .map() .select() .sort() n.times() n.upto() .compact()沒有nil .uniq() 沒有重複值

#沒有initialize
class Cat(object) 
  def eat 
    return ("#{object} is eating")
  end
end

kitty = Cat.new
puts kitty.eat


#需要initialize
class Cat 
  def initialize(name)
    @name = name
  end
  def speak
    return ("#{@name} meows.")
  end
end

kitty = Cat.new('Mr Whiskers')
puts kitty.speak   # 印出 Mr Whiskers meows.

nancy = Cat.new('Lamp')
puts nancy.speak   # 印出 Lamp meows.

sherly = Cat.new('$$Money Bags$$')
puts sherly.speak  # 印出 $$Money Bags$$ meows.

#有initilaize帶入一預設值
class Ball
  def initialize(ball_type = "regular")
    @ball_type = ball_type
  end
  def ball_type
      @ball_type
  end
end

ball1 = Ball.new
puts ball1.ball_type   # 印出 regular

ball2 = Ball.new("super")
puts ball2.ball_type   # 印出 super


#如上的class: 有initilaize帶入一預設值, 使用attr_reader可以省略整個ball_type method
class Ball
  attr_reader :ball_type
  def initialize(ball_type = "regular")
    @ball_type = ball_type
  end
end

ball1 = Ball.new
puts ball1.ball_type   # 印出 regular

ball2 = Ball.new("super")
puts ball2.ball_type   # 印出 super

#有initilaize帶入一預設值
class Drink
  def initialize(order = "grande")
    @order = order
  end
  def place_order
    @order
  end 
end

my_order = Drink.new("Big jumbo combo")
puts my_order.place_order #Big jumbo combo

ari_order = Drink.new
puts ari_order.place_order #grande

#定義一個方法
def method (par1 = "coder", par2)
  puts ("Wow #{par1} #{par2}, you're amazing!")
end

method("Aila", "you're coding")
method("baby", "you've had enough sleep")
method("you're on the right path") #par1預設值是coder
method("you're making progress") #par1預設值是coder
#!驚嘆號的用法: #加上驚嘆號之後 原本的陣列值也被改變了
list = [8, 4, 6, 2, 9, 3]
p list.sort
p list
p list.sort! #加上驚嘆號之後 原本的陣列值也被改變了
p list


#擴充String
class String
  def greeting!
    return "Hello, #{self.capitalize}"
  end
end

puts "kitty".greeting!  # 印出 Hello, Kitty

#擴充Array
class Array 
  def second 
   self[1]
  end 
end 
p [1,2,3].second  # 2
p [].second       # nil
p [1].second      # nil

#有initilaize
class ATM
  def initialize(original_balance)
    @balance = original_balance
  end
  def withdraw(amount)
    @balance = @balance - amount
  end
  def deposit(amount)
    @balance = @balance + amount
  end 
  def balance
    return @balance
  end
end

atm = ATM.new(10)

atm.withdraw(5)
puts atm.balance  # 印出 5

atm.deposit(10)
puts atm.balance  # 印出 15

#存取控制 encapsulation 在method前面宣告private
  class Encapsulation
    def public 
      puts "public"
      private
    end
    private 
    def private 
      puts "private"
    end
    def still_private
      puts "still_private"
    end
  end
  user = Encapsulation.new
  user.public #->方法一 用一個public method來run private的method
  user.send(:private) #->方法二 use other method beforehand

#寫String的擴充is_upper?
class String
  def is_upper?
    self == self.upcase
  end

  def is_lower?
    self == self.downcase
  end
end

puts "a".is_upper? #=> false
puts "A".is_upper? #=> true
puts "c".is_upper?                       # false
puts "C".is_upper?                       # true
puts "hello I AM DONALD".is_upper?       # false
puts "HELLO I AM DONALD".is_upper?       # true
puts "ACSKLDFJSgSKLDFJSKLDFJ".is_upper?  # false


class Person
  def initialize(first_name, last_name)
    @name = first_name + " " + last_name
  end
  def greet 
    "Hello, #{@name}!"
  end
end 
  
    person = Person.new('Bob', 'Smith')
    p person.greet # 'Hello, Bob Smith!'
  