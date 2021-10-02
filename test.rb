require './employee'

class SalesManager < Employee
  attr_reader :base_salary,
              :estimated_annual_sales
def initialize(base_salary, estimated_annual_sales, name, id)
  @base_salary = base_salary
  @estimated_annual_sales = estimated_annual_sales
  super(name, id)
end

def bonus
  0.1 * @estimated_annual_sales
end

def total_compensation
  super + 1
end

end
