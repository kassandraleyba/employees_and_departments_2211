require './lib/department'
require './lib/employee'

RSpec.describe Department do
  let(:customer_service) { Department.new("Customer Service") }
  describe '#initialize' do
    it 'exists' do
      
      expect(customer_service).to be_a(Department)
    end

    it "has attributes" do
      expect(customer_service.name).to eq("Customer Service")
    end
  end
end