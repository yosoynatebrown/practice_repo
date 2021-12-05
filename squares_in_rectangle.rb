def find_squares(x,y)
 total = x * y

 y.times do |num|
  num += 1
  total += ((x - num) * (y - num))
 end

 total
end

p find_squares(11, 4)


# We can generalise this fact by taking a rectangle of x rows and y columns:
# Total number of squares=x×y+(x−1)×(y−1)+(x−2)×(y−2)+…
# The addition series stops only when either the rows or the columns reduces to 1.