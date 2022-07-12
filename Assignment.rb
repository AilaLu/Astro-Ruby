#1-1
result = ""
i = 1
while i <= 5
  result += "*"
  puts result
  i += 1
end
#answer
1.upto(5) do |n|
  puts "*" * n
end



#1-2
def is_leap_year?(y)
  if y % 100 != 0 && y % 4 == 0
    return true
  else if y % 100 == 0 && y % 400 == 0
    return true
  else 
    return false
  end
  end
end

puts is_leap_year?(1998)  # 印出 false
puts is_leap_year?(2000)  # 印出 true
puts is_leap_year?(2100)  # 印出 false

1-3
def bmi_calculator(height, weight)
  #BMI = kg/m2
  m = height*0.01
  bmi = (weight/(m*m)).round(1)
  return bmi
  
end

puts bmi_calculator(170, 50) # 印出 17.3 (小數點以下一位，四捨五入)
puts bmi_calculator(180, 65) # 印出 20.1 (小數點以下一位，四捨五入)



#2-1把陣列 [1, 3, 4, 1, 7, nil, 7] 由小到大排序，並且移除 nil 以及重複的數字。
#array移除所有的nil .compact() 要先用compact, 不然有nil不能sort
#array排序 .sort()
#array不重複 .uniq()
#有加上驚嘆號代表改變了原來的array
array = [1, 3, 4, 1, 7, nil, 7]
p array = array.compact!.sort!.uniq! #-> [1, 3, 4, 7]

#2-2計算 1 ~ 100 之間所有單數的總和
#單數.odd()  #總和.sum
p odd_sum = (1..100).select(&:odd?).sum

#3-1
def calc_parking_fee(vehicle_type, parking_hour)
  case vehicle_type
    when :motocycle
      return 20
    when :car #在case裡面用不能再用case, 要用if else 
    parking_hour = parking_hour.ceil #會自動進位：不滿一小時當作一小時
     if parking_hour <= 2
        return parking_hour*40
      else if parking_hour > 2 && parking_hour < 16
        return (parking_hour-2)*30 + 2*40    
      else
        return 500 #(16-2)*30+2*40= 420+80 = 500
      end
  end
  end
end

puts calc_parking_fee(:motocycle, 2)  # 印出 20
puts calc_parking_fee(:motocycle, 8)  # 印出 20
puts calc_parking_fee(:car, 1.5)      # 印出 80
puts calc_parking_fee(:car, 4)        # 印出 140
puts calc_parking_fee(:car, 5.5)      # 印出 200
puts calc_parking_fee(:car, 18)       # 印出 500

#3-2
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

#4-1
def generate_odd_numbers(n)
  list = 1.upto(n).to_a
  odd_list = []
  list.each do |n|
    if n.odd? == true 
      odd_list << n
    end
  end 
  return odd_list
end
#(1..n).select(&:odd?) 或是一行搞定
p generate_odd_numbers(7)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(15) # 印出 [1, 3, 5, 7, 9, 11, 13, 15]
p generate_odd_numbers(8)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(6)  # 印出 [1, 3, 5]
p generate_odd_numbers(3)  # 印出 [1, 3]

#4-2
def calc_area(radius)
  if radius >= 1
  area = (radius*radius*3.1415926).round(2)
  else 
  puts "Radius must greater than zero!"
  end
  return area
end

puts calc_area(8)   # 印出 201.06
puts calc_area(10)  # 印出 314.16
puts calc_area(15)  # 印出 706.86
puts calc_area(-1)  # 印出 Radius must greater than zero!

#4-3
def generate_order_code(str)
  #將int->string 得到數字字串
  str = str.to_s
  #0的長度 = 7- str的長度
  zero_length = 7 - str.length 
  #印出0字串
  zero_str = "0" * zero_length
  #將0字串和數字字串合併
    order_code = zero_str << str
  return "TN-#{order_code}"
end


puts generate_order_code(29)    # 印出 TN-0000029
puts generate_order_code(328)   # 印出 TN-0000328
puts generate_order_code(1224)  # 印出 TN-0001224
#puts generate_order_code(7777777)  # 印出 TN-7777777

#4-4
def means(name, score_list)
  means = score_list.sum.to_f / score_list.size.to_f
  "#{name}: #{means}"
end

p means("John", [60, 75, 87, 90, 78])
p means("Mary", [70, 76, 84, 93, 58])
p means("Sherly", [90, 100, 77, 89, 98])
p means("Joanne", [70, 73, 88, 92, 68])


#5-1
#請寫一段程式，印出 P 開頭的程式語言 :select first letter == "P"
#找出名字最短的程式名語 :return the string length of each element, then use .min
language = ['PHP', 'Python', 'Ruby', 'Perl', 'ASP', 'ActionScript', 'Objective-C', 'Swift', 'Kotlin', 'Go']
puts language.select {|n| n[0] == "P"}

length = language.map {|n| n.length} #-> [3, 6, 4, 4, 3, 12, 11 ,5, 6, 2]
length.min #-> 2
puts language.select {|n| n.length == length.min}
 

#5-2
def calc_age(birthday)
  return ((Date.today - Date.parse(birthday)).to_i / 365.0).ceil
end
puts calc_age('1985/1/2')  # 印出 35
puts calc_age('1997/8/28') # 印出 22

#6-1 跟 #8-16很像
def calc_sum(param)
  array = Array(param)
  return array.sum 
end
puts calc_sum([1, 2, 3, 4, 5])  # 印出 15
puts calc_sum(5)                # 印出 5
puts calc_sum(nil)              # 印出 0

#6-2
class Array 
  def second 
   self[1]
  end 
end 
p [1,2,3].second  # 2
p [].second       # nil
p [1].second      # nil
