
def add(one, two)
  return one + two
end

def subtract(one, two)
  return one - two
end

def sum(array)
  sum = 0
  if array.length > 0 then 
    array.each do |t|
      sum += t
    end
  end 
  return sum
end

def multiply(num)
  result = 1
  num.each do |t|
    result = result * t
  end
  return result
end

def power(one, two)
  result = 1
  two.times do
    result = result * one
  end
  return result
end 

def factorial(int)
  if int <= 1  
    return 1
  end
    return int * factorial(int - 1)
end
