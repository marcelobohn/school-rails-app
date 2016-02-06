class EnrollmentsController < ApplicationController
  def new
    @all_courses = Course.all
    @all_students = Student.all
  end

  def create
    # render :text => params[:entry_at]
    Classroom.create student_id: params[:student_id], course_id: params[:course_id], entry_at: params[:entry_at]
    redirect_to root_path 
  end
end
