class Budget
  attr_reader :current_year,
              :departments
  attr_accessor :budget_amount

  def initialize
    @current_year = Time.now.year
    @budget_amount = 0
    @departments = []
  end

  def budget_amount
    all_expenses = []
    @departments.each do |department|
      all_expenses << department.expenses if department.expenses < @budget_amount
    end
    all_expenses
  end

  def add_department(department)
    @departments << department
  end

  def department_expenses
    @departments.find_all do |department|
      department.expenses < budget_amount(budget)
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