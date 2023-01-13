class Department
  attr_reader :name, 
              :employees,
              :expenses,
              :current_year,
              :budget

  def initialize(name)
    @name = name
    @employees = []
    @expenses = 0
    @current_year = Time.now.year
    @budget = 0
  end

  def hire(employee)
    @employees << employee
  end

  def expense(expense)
    @expenses += expense
  end
end