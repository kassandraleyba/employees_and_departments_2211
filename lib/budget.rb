class Budget
  attr_reader :current_year,
              :budget_amount,
              :departments

  def initialize
    @current_year = Time.now.year
    @budget_amount = 0
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def departments
    @departments
  end
end