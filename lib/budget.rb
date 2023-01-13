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

  def department_expenses
    @departments.find_all do |department|
      department.expenses < 500
    end
  end

  def employee_salary
    employee_salary = []
    @departments.each do |department|
      department.employees.each do |employee|
        employee_salary << employee.salary
      end
    end
    employee_salary
  end
end