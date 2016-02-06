class WelcomeController < ApplicationController
  def index
    @total_students = Student.all.count
    @total_courses = Course.all.count
    @last_enroolment = Classroom.last
  end
end
