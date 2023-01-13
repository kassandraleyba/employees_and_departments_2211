require './lib/department'
require './lib/employee'

RSpec.describe Department do
  let(:customer_service) { Department.new("Customer Service") }
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"}) }
  let(:aaron) { Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) }

  describe '#Initialize' do
    it 'exists' do
      
      expect(customer_service).to be_a(Department)
    end

    it "has attributes" do
      expect(customer_service.name).to eq("Customer Service")
    end
  end

  describe "#Employees" do
    it "starts with no employees" do
      expect(customer_service.employees).to eq([])
    end

    it "can hire employees" do
      customer_service.hire(bobbi)
      customer_service.hire(aaron)

      expect(customer_service.employees).to eq([bobbi, aaron])
    end
  end
end