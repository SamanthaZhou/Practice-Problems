def add(number1,number2)
  solution = number1.to_f + number2.to_f
  return solution
end

def subtract(number1,number2)
  solution = number1.to_f - number2.to_f
  return solution
end

def sum(array)
  total = 0
  if array.length > 0
    array.each do |item|
      total += item
    end
  end
  result = total
  return result
end

def multiply(array)
  total = 1
  if array.length > 0
    array.each do |item|
      total = total * item.to_f
    end
  end
  result = total
  return result
end

def power(number,power)
  total = 1
  index = power.to_i
  while index > 0
    total = total * number.to_i
    index -= 1
  end
  return total
end

def factorial(number)
  number=number.to_i
  if number >= 0
    total = 1
    while number > 0
      total = total * number
      number -= 1
    end
    return total
  elsif number < 0
    return undefined
  end
end
