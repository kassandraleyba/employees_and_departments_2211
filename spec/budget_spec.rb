require './lib/budget'
require './lib/department'
require './lib/employee'


RSpec.describe Budget do
  let(:budget) { Budget.new}
  let(:customer_service) { Department.new("Customer Service") }
  let(:administration) { Department.new("Administration") }
  let(:marketing) { Department.new("Marketing") }
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"}) }
  let(:aaron) { Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) }

  describe "#Initialize" do
    it "exists" do
      expect(budget).to be_a(Budget)
    end
  end

  describe "#Has a year" do
    it "has a year, as well as a way to read that data" do
      expect(budget.current_year).to eq(2023)
      expect(budget.budget_amount).to eq(0)
    end
  end

  describe "#Departments" do
    it "can list all of its departments" do
      budget.add_department(customer_service)
      budget.add_department(administration)
      budget.add_department(marketing)

      expect(budget.departments).to eq([customer_service, administration, marketing])
    end

    it "can list all departments with expenses less than $500" do
      budget.add_department(customer_service)
      budget.add_department(administration)
      budget.add_department(marketing)

      customer_service.expense(200)
      administration.expense(50)
      marketing.expense(600)

      expect(budget.department_expenses).to eq([customer_service, administration])
    end
  end

  describe "#Salary" do
    it "can list all employees' salaries" do
      budget.add_department(customer_service)
      budget.add_department(marketing)

      customer_service.hire(bobbi)
      marketing.hire(aaron)

      bobbi.salary
      aaron.salary

      expect(budget.employee_salary).to eq([100000, 90000])
    end
  end
end