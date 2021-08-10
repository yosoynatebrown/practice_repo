module MathHelpers
  def exponent(first, second)
    first**second
  end
end

class Calculator
  extend MathHelpers

  def initialize(name)
    @name = name
  end

  def self.square_root(number)
    puts exponent(number, 0.5)
  end

end

Calculator.square_root(9)
