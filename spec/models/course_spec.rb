require 'rails_helper'

RSpec.describe Course, :type => :model do
  describe "creation" do

    context "valid attributes" do
      it "should be valid" do
        course = Course.new(name: "React", description: "Web components!", status: 1)
        expect(course).to be_valid
      end

      it "should be valid by factory" do
        course = FactoryGirl.build(:course)
        expect(course).to be_valid
      end

    end

    context "invalid attributes" do
      it "invalid by factory" do
        # course = Course.new(name: "React", description: nil)
        course = FactoryGirl.build(:course, :courseinvalid)
        expect(course).to_not be_valid
      end

      it "invalid status" do
        course = FactoryGirl.build(:course, status: nil)
        expect(course).to_not be_valid
      end
    end

  end
end
