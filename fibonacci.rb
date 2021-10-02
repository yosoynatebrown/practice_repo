def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  end
if n.even?
  half = n/2
  half_minus_1 = half - 1
else
  half = n/2 + 1
  half_minus_1 = half - 1
end
  f_of_n           = (2 * fib(half_minus_1) + fib(half)) * fib(half)
  # f_of_n_minus_one = fib(half_minus_1)**2 + fib(half)**2
  #
  # f_of_n
end

p fib(2)
