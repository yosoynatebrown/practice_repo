class Employee

  def initialize(name, id)
    @name = name
    @id = id
  end
  def total_compensation
    base_salary + bonus
  end

  def benefits
    [:sick_leave]
  end
end
