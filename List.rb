

#List
list = %w[python php ruby] # string
p list #prints ["python", "php", "ruby"]

lst2 = [1, 2, 3, 4, 5]
p lst2
p lst2.map { |x| x*2 } #prints out the set of the original list with each element *2

(1..8).each {|n| puts n} #prints 2 to 6 one at a time

p (1..8).to_a #prints [1, 2, 3, 4, 5, 6, 7, 8]

p ("a".."e").to_a #prints [a, b, c, d, e]

p (1..100).select { |x| x.odd? } #印出所有單數

p (1..100).sum #計算1~100的總和

p (1..100).to_a.sample(5) #隨機取1~100中的5個數字



Enumerables
