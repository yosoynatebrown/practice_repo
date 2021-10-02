def fib(n)
  even_flag = false
  if n < 0 && n.even?
    even_flag = true
  end
  n = n.abs
  n.times do |num|
    fibonacci_array << fibonacci_array[num] + fibonacci_array[num + 1]
  end
  if even_flag
    fibonacci_array[n] * -1
  else
    fibonacci_array[n]
  end
end

def fibonacci_array
  [0, 1]
end

p fib(50)
