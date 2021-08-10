module MathHelper
  def multiply_by_two(number)
    return(number * 2)
  end
end

class Homework
  include MathHelper
end

my_homework = Homework.new
p my_homework.multiply_by_two(4)
