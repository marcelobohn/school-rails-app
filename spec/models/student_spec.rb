require 'rails_helper'

RSpec.describe Student, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  # it "is invalid without a firstname" do
    # Factory.build(:student_valid, name: nil).should_not be_valid
    # contact = Factory(:student, name: "John")
    # contact.name.should == "John"
  # end

  it "trying create new Student" do

    # student = FactoryGirl.create(:student_valid)
    # expect(student.name).to eq('Marcelo')

    # f = FactoryGirl.build(:student_valid)
    # student = Student.create!(f.attributes)
    # expect(student.name).to eq('Marcelo')

    student = Student.new(:name => 'João', :register_number => 'ABC', :status => 0)
    expect(student.name).to eq('João')
  end
end
