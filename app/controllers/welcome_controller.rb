class WelcomeController < ApplicationController
  def index
    @last_enroolment = Classroom.last
    @total_students = Student.all.count
    @total_courses = Course.all.count    
  end
end
