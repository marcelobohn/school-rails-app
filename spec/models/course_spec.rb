require 'rails_helper'

RSpec.describe Course, :type => :model do
  describe "creation" do

    context "valid attributes" do
      it "should be valid" do
        course = Course.new(name: "React", description: "Web components!", status: 1)
        course.should be_valid
      end

      # it "should be valid" do
        # course = FactoryGirl.build(:course_valid)
        # course.should be_valid
      # end
    end

    context "invalid attributes" do
      it "should not be valid" do
        course = Course.new(name: "React", description: nil)
        course.should_not be_valid
      end
    end

  end
end
