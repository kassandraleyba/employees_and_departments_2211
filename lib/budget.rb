class Budget
  attr_reader :current_year,
              :departments

  def initialize
    @current_year = Time.now.year
    @departments = []
  end

  def expenses_less_than(amount)
    all_expenses = []
    @departments.each do |department|
      all_expenses << department if department.expenses < amount
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