require 'rails_helper'

RSpec.describe Classroom, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "creation" do

    context "valid attributes" do
      it "should be valid" do
        classroom = Classroom.new(student_id: 1, course_id: 1)
        classroom.should be_valid
      end
    end
  end
end
