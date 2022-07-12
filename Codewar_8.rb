#8-1
def count_by(x, n)
  (1..n).map {|i| i*x}
end

p count_by(1, 5)    # [1, 2, 3, 4, 5]
p count_by(2, 5)    # [2, 4, 6, 8, 10]
p count_by(3, 5)    # [3, 6, 9, 12, 15]
p count_by(50, 5)   # [50, 100, 150, 200, 250]
p count_by(100, 5)  # [100, 200, 300, 400, 500]

#8-2
def alphabet_position(text)
  text = text.delete(" ").downcase.delete("^a-z").chars.to_a #將傳進來的句子變成char單字組成的無空格字串
  letter_ls = ("a".."z").to_a #英文單字的array
  position_array = text.map {|char| letter_ls.index(char)+1 } #一次輸入一個text裡的char 英文單字對應的數字(a的index是0,  b的index是1..., 所以對照是index+1)
  position_array.join(" ") #把array變成string
end

p alphabet_position("The sunset sets at twelve o' clock.")
# 印出 "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" 字串
p alphabet_position("-.-'")
# 印出 "" 空字串

#8-3
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
puts "ACSKLDFJSGSKLDFJSKLDFJ".is_upper?  # true

#8-4
#method 1
def opposite(n)
  if n > 0
    return "-#{n}"
  else
    negative_array = n.to_s.split("")
    return negative_array.drop(1).join
  end
end
#method2
def opposite(n)
  if n > 0
    return n - (n*2)
  else 
    return n.abs
  end
end
puts opposite(1)   # -1
puts opposite(14)  # -14
puts opposite(-34) # 34
puts opposite(-256) #256

#8-5
def repeat_str(n, s)
 puts s * n
end
repeat_str(6, "I")     # 印出 IIIIII
repeat_str(5, "Hello") # 印出 HelloHelloHelloHelloHello

#8-6
def nearest_sq(n)
  sq = (1..100).map {|i| i*i} #power by 2 i*i can also be shown as i ** 2
  sq.min_by {|i| (n-i).abs}
end
#make a list that is sq from 1 to 100: [1, 4, 9, 16, 25, 36, 49, 64, 81, 100...]
#use min_by to find the closest number that is from the given n
puts nearest_sq(1)    # 1
puts nearest_sq(2)    # 1
puts nearest_sq(10)   # 9
puts nearest_sq(111)  # 121
puts nearest_sq(9999) # 10000


#8-7
def monkey_count(n)
  (1..n).map {|i| i}
end

p monkey_count(5)  # 印出 [1, 2, 3, 4, 5]
p monkey_count(3)  # 印出 [1, 2, 3]
p monkey_count(9)  # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9]
p monkey_count(10) # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p monkey_count(20) # 印出 [1, 2, 3, 4, 5, 6,..略..18, 19, 20]

#8-8
def count_sheep(num)
  num_arr = (1..num).to_a.join(" sheep...")+" sheep..."
end

puts count_sheep(1)  # 印出 1 sheep...
puts count_sheep(2)  # 印出 1 sheep...2 sheep...
puts count_sheep(3)  # 印出 1 sheep...2 sheep...3 sheep...

#8-9
def century(year)
  case year 
    when (1601..1700)
    puts "17 世紀"
    when (1701..1800)
    puts "18 世紀"
    when (1801..1900)
    puts "19 世紀"
    when (1901..2000)
    puts "20 世紀"
  end
end

puts century(1705)  # 18 世紀 1700~1799
puts century(1900)  # 19 世紀 1800~1899
puts century(1601)  # 17 世紀 1600~1699
puts century(2000)  # 20 世紀 1900~1999

#8-10
def solution(sentence)
  sentence = sentence.split(" ").reverse.join(" ")
end

puts solution("The greatest victory is that which requires no battle") 
# 印出 battle no requires which that is victory greatest The


#8-11
def squareSum(numbers)
  if numbers.kind_of?(Integer) == true
    return numbers*numbers
  else 
  numbers.map {|i| i*i }.sum
  end 
end

puts squareSum(2)          # 印出 4
puts squareSum([1, 2, 2])  # 印出 9

#8-12

def remove_char(s)
  #s[1..-2]或是一行搞定去頭去尾
  s.slice!(0)
  s.slice!(-1) #= chop()
  return s
end
p remove_char('eloquent')  # "loquen"
p remove_char('country')   # "ountr"
p remove_char('person')    # "erso"
p remove_char('place')     # "lac"
p remove_char('ok')        # ""

#8-13
def positive_sum(arr)
  arr.select {|n| n>0}.sum
end

puts positive_sum([1,2,3,4,5])   # 15
puts positive_sum([1,-2,3,4,5])  # 13
puts positive_sum([-1,2,3,4,-5]) # 9

#8-14
def correct(string)
  string.gsub!("5", "S")
  string.gsub!("0", "O")
  string.gsub!("1", "I")
  #gsb() global substitution 
  return string
end

puts correct("L0ND0N")     # LONDON
puts correct("DUBL1N")     # DUBLIN
puts correct("51NGAP0RE")  # SINGAPORE
puts correct("BUDAPE5T")   # BUDAPEST
puts correct("PAR15")      # PARIS

#8-15
def count_sheeps(array)
  #  array.select {|i| i == true }.count 或是一行搞定
  n = 0
  array.each do |i|
    if i == true
      n = n+1
    end
  end
  return n
end

array1 = [true,  true,  true,  false,
          true,  true,  true,  true ,
          true,  false, true,  false,
          true,  false, false, true ,
          true,  true,  true,  true ,
          false, false, true,  true ]
              
puts count_sheeps(array1)  # 17

#8-16
def sum_array(arr)
  #先把大家都變成array
  array = Array(arr)
  if array.length <= 2
    return 0
  else
    return array.sort[1..-2].sum
  end
end

puts sum_array(nil)                      # 0
puts sum_array([])                       # 0
puts sum_array([3])                      # 0
puts sum_array([-3])                     # 0
puts sum_array([ 3, 5])                  # 0
puts sum_array([-3, -5])                 # 0
puts sum_array([6, 2, 1, 8, 10])         # 16
puts sum_array([6, 0, 1, 10, 10])        # 17
puts sum_array([-6, -20, -1, -10, -12])  # -28
puts sum_array([-6, 20, -1, 10, -12])    # 3

#8-17
def merge_arrays(a, b)
  (a+b).uniq.sort
end
p merge_arrays([1, 3, 5], [2, 4, 6])  # [1, 2, 3, 4, 5, 6]
p merge_arrays([2, 4, 8], [2, 4, 6])  # [2, 4, 6, 8]

#8-18
def abbrev_name(name)
  name.split(" ").map {|i| i[0]}.join(".")
end
puts abbrev_name("Sam Harris")      # S.H
puts abbrev_name("Patrick Feenan")  # P.F
puts abbrev_name("Evan Cole")       # E.C
puts abbrev_name("P Favuzzi")       # P.F
puts abbrev_name("David Mendieta")  # D.M

#8-19
def square_or_square_root(array)
  #array.map {|i| Math.sqrt(i) % 1 == 0? Math.sqrt(i).to_i: i*i} 或是一行搞定！ <3
  sos = []
  array.each do |i|
    if Math.sqrt(i) % 1 == 0
      sos << Math.sqrt(i).to_i
    else
      sos << i*i
    end
  end
  return sos
end

p square_or_square_root([4, 3, 9, 7, 2, 1])      # [2, 9, 3, 49, 4, 1]
p square_or_square_root([100, 101, 5, 5, 1, 1])  # [10, 10201, 25, 25, 1, 1]
p square_or_square_root([1, 2, 3, 4, 5, 6])      # [1, 4, 9, 2, 25, 36]

#8-20
def check_exam(correct, answer)
  score = 0
  answer.zip(correct).map do |a,c| 
    if a == ""
      score += 0
    else if a == c 
      score += 4 
    else
      score -= 1
    end 
  end
end
    if score <= 0
      return 0 #最低分就是0分了
    else
      return score
    end 
end

puts check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"])  # 6
puts check_exam(["a", "a", "c", "b"], ["a", "a", "b",  ""])  # 7
puts check_exam(["a", "a", "b", "c"], ["a", "a", "b", "c"])  # 16
puts check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"])  # 0

#8-21
def give_me_five
  return "mommy".length
end  

puts give_me_five  # 5

#8-22
class Array 
  def second 
   self[1]
  end 
end 
p [1,2,3].second  # 2
p [].second       # nil
p [1].second      # nil

#8-23
#練習block, yield
def compute
  if block_given? 
    yield
  else 
    return "Do not compute"
  end
end

puts compute { "Block" }  # 印出 Block
puts compute              # 印出 Do not compute

#8-24
class Ghost
  def color
    list = ["white", "yellow", "purple", "red"]
    return list.sample
  end
end

ghost = Ghost.new
puts ghost.color          # 隨機印出 white, yellow, purple, red 這四種顏色的字串

#8-25
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

#8-26
class Ball
  def initialize(input = "regular")
    @input = input
  end
  def ball_type
      return "#{@input}"
  end
end

ball1 = Ball.new
puts ball1.ball_type   # 印出 regular

ball2 = Ball.new("super")
puts ball2.ball_type   # 印出 super

#8-27 
def format_money(amount)
    amount = '%.2f' % amount #number_with_precision(amount, precision: 2)
    return "$#{amount}"
end

puts format_money(39.99)  # 印出 $39.99
puts format_money(39.90)  # 印出 $39.90
puts format_money(39)     # 印出 $39.00

#8-28
def twice_as_old(father, son) 
  #(father + n )/(son + n) == 2
  #2*son + 2*n = father + n
  n = father - (2*son)
  return n
end

puts twice_as_old(36,7)   # 22
puts twice_as_old(65,30)  # 5
puts twice_as_old(42,21)  # 0
puts twice_as_old(22,1)   # 20
puts twice_as_old(29,0)   # 29

#8-30
def powers_of_two(n)
  (0..n).map {|i| 2 ** i}
end

p powers_of_two(0)   # [1]
p powers_of_two(1)   # [1, 2]
p powers_of_two(4)   # [1, 2, 4, 8, 16]

def rock_paper_scissor(p1, p2)
  if p1 == p2 
    return "Draw!"
  else if p1 == 'rock'&& p2 == 'scissors'
    return "Player 1 won!"
  else if p1 == 'paper'&& p2 == 'rock'
    return "Player 1 won!"
  else if p1 == 'paper'&& p2 == 'scissors'
    return "Player 2 won!"
  else p1 == 'rock'&& p2 == 'paper'
    return "Player 2 won!"
  end 
end

puts rock_paper_scissor('rock', 'scissors')      # 印出 Player 1 won!
puts rock_paper_scissor('paper', 'rock')         # 印出 Player 1 won!
puts rock_paper_scissor('paper', 'scissors')     # 印出 Player 2 won!
puts rock_paper_scissor('rock', 'paper')         # 印出 Player 2 won!
puts rock_paper_scissor('rock', 'rock')          # 印出 Draw!
puts rock_paper_scissor('scissors', 'scissors')  # 印出 Draw! end 

#8-31
def is_period_late?(last, today, cycle_length)
  old_date = Date.parse(last)
  new_date = Date.parse(today)
  days_between = (new_date - old_date).to_i
  return (days_between > cycle_length)? true : false
  #其實這一行就夠了 Date.parse(today) - Date.parse(last) > cycle_length
end

puts is_period_late?('2016/6/13', '2016/7/16', 35) # false
puts is_period_late?('2016/6/13', '2016/7/16', 28) # true
puts is_period_late?('2016/6/13', '2016/7/16', 35) # false
puts is_period_late?('2016/6/13', '2016/6/29', 28) # false
puts is_period_late?('2016/7/12', '2016/8/9', 28)  # false
puts is_period_late?('2016/7/12', '2016/8/10', 28) # true
puts is_period_late?('2016/7/1', '2016/8/1', 30)   # true
puts is_period_late?('2016/6/1', '2016/6/30', 30)  # false
puts is_period_late?('2016/1/1', '2016/1/31', 30)  # false
puts is_period_late?('2016/1/1', '2016/2/1', 30)   # true