def reverse(x)
    if x.between?(-2147483648, 2147483647)
      require "pry"; binding.pry
      if x < 0
        x.to_s.reverse.to_i * -1
      else
         x.to_s.reverse.to_i
      end
    else
      0
    end
end

p reverse(1534236469)
