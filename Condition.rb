#三種寫法判斷 越來越簡潔 :)
def is_adult?(age)
  #第一種寫法if, else
  if age >= 18
    return true
  else 
    return false
  end
  #第二種寫法ternary operatora三元運算
  (age >= 18)? true: false
  #第三種寫法return Boolean
  return age >= 18
end

p is_adult?(28)