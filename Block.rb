#Block區塊: 只會依附在method才會出現, 如果不是緊接在method, 就要使用yield
#兩種用法
#do..end
5.times do |n| 
  puts n
end 
#puts 0~4

#{}
5.times {|n| puts n}
#puts 0~4

#自己做一個.select() 如果不是緊接在method, 就要使用yield 就會跑去執行大括弧裡的東西
#創建一個result來存回傳值 
#用each來go through 每個list裡的值
#如果yield到大括弧i.odd?是truthy
#就將這個element push到result裡
#最後回傳result
def my_select(list)
  result = []
  list.each do |n|
    if yield(n) == true 
    result << n 
    end
  end
  return result 
end

p my_select([1, 2, 3, 4, 5]) {|i| i.odd? }


#物件化的Block: Proc跟Lambda
https://ithelp.ithome.com.tw/articles/10201297
#程序物件Proc&call：Proc objects are blocks of code that have been bound to a set of local variables.
add_two_proc = Proc.new {|n| n+2}
p add_two_proc.call(3)
#lambda有兩種用法 
add_two_lambda = lambda {|n| n+2} #直接用lambda
add_two_arrow = -> (n)  {n+2} #用箭頭-> 
p add_two_lambda.call(5)
p add_two_arrow.call(7)