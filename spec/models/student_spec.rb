require 'rails_helper'

RSpec.describe Student, :type => :model do
  describe "creation" do
    it "trying create new Student" do
      # student = Student.new(:name => 'João', :register_number => 'ABC', :status => 0)
      student = FactoryGirl.build(:student)
      expect(student.name).to eq('Marcelo')
    end
  end
end
